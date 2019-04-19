%scanner scanner.h
%scanner-token-function d_scanner.lex()
%filenames parser
%parsefun-source parser.cc

%union 
{
	int integer_value;
	std::string * string_value;
	double double_value;
	list<pair<Data_Type, string> *> * list_decl;
	Sequence_Ast * sequence_ast;
	Ast * ast;
	Symbol_Table * symbol_table;
	list<Symbol_Table_Entry *> * list_symbol_entry;
	Procedure * procedure;

	//ADD CODE HERE
};

//ADD TOKENS HERE

%token <integer_value> INTEGER_NUMBER
%token <double_value> DOUBLE_NUMBER
%token <string_value> NAME
%token INTEGER FLOAT
%token ASSIGN VOID
//%token PLUS MINUS MULT DIVIDE
%token NOT
%left GE LE EQ NE LT GT AND OR
%token IF WHILE DO
%nonassoc ELSE
%left '+' '-'
%left '*' '/'
%right UMINUS
%token '?' ':'
%nonassoc '(' WASH

%type <symbol_table> optional_variable_declaration_list
%type <symbol_table> variable_declaration_list
%type <list_symbol_entry> variable_declaration
%type <list_decl> declaration
%type <list_decl> int_declaration_names_list
%type <list_decl> float_declaration_names_list
//ADD CODE HERE
%type <sequence_ast> statement_list
%type <ast> assignment_statement
%type <ast> arith_expression
%type <ast> variable
%type <ast> constant
%type <ast> operand
%type <ast> expression_term
%type <ast> statement
// %type <ast> matched_statement
// %type <ast> other_than_selection_statement
%type <ast> iteration_statement
%type <ast> boolean_expression_term
%type <ast> boolean_expression
%type <ast> relational_expression
%type <ast> exp_body
%type <ast> selection_statement

%start program

%%

program:
	declaration_list procedure_definition
	{
	if (NOT_ONLY_PARSE)
	{
		CHECK_INVARIANT((current_procedure != NULL), "Current procedure cannot be null");

		program_object.set_procedure(current_procedure, get_line_number());
		program_object.global_list_in_proc_check();
	}
	}
;

declaration_list:
	procedure_declaration
	{
	if (NOT_ONLY_PARSE)
	{
		Symbol_Table * global_table = new Symbol_Table();
		program_object.set_global_table(*global_table);
	}
	}
|
	variable_declaration_list
	procedure_declaration
	{
	if (NOT_ONLY_PARSE)
	{
		Symbol_Table * global_table = $1;

		CHECK_INVARIANT((global_table != NULL), "Global declarations cannot be null");

		program_object.set_global_table(*global_table);
	}
	}
|
	procedure_declaration
	variable_declaration_list
	{
	if (NOT_ONLY_PARSE)
	{
		Symbol_Table * global_table = $2;

		CHECK_INVARIANT((global_table != NULL), "Global declarations cannot be null");

		program_object.set_global_table(*global_table);
	}
	}
;

procedure_declaration:
	VOID NAME '(' ')' ';'
	{
	if (NOT_ONLY_PARSE)
	{
		CHECK_INVARIANT(($2 != NULL), "Procedure name cannot be null");
		CHECK_INVARIANT((*$2 == "main"), "Procedure name must be main in declaration");
	}
	}
;

procedure_definition:
	NAME '(' ')'
	{
	if (NOT_ONLY_PARSE)
	{
		CHECK_INVARIANT(($1 != NULL), "Procedure name cannot be null");
		CHECK_INVARIANT((*$1 == "main"), "Procedure name must be main");

		string proc_name = *$1;

		current_procedure = new Procedure(void_data_type, proc_name, get_line_number());

		CHECK_INPUT ((program_object.variable_in_symbol_list_check(proc_name) == false),
			"Procedure name cannot be same as global variable", get_line_number());
	}
	}

	'{' optional_variable_declaration_list
	{
	if (NOT_ONLY_PARSE)
	{

		CHECK_INVARIANT((current_procedure != NULL), "Current procedure cannot be null");

		Symbol_Table * local_table = $6;

		if (local_table == NULL)
			local_table = new Symbol_Table();

		current_procedure->set_local_list(*local_table);
	}
	}

	statement_list '}'
	{
	if (NOT_ONLY_PARSE)
	{
		Sequence_Ast* seq = $8;

		CHECK_INVARIANT((current_procedure != NULL), "Current procedure cannot be null");
		CHECK_INVARIANT((seq != NULL), "statement list cannot be null");

		current_procedure->set_sequence_ast(*seq);
	}
	}
;

optional_variable_declaration_list:
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = NULL;
	}
	}
|
	variable_declaration_list
	{
	if (NOT_ONLY_PARSE)
	{
		CHECK_INVARIANT(($1 != NULL), "Declaration statement list cannot be null here");
		////cout<<"Variable declaration list received"<<endl;
		$$ = $1;
	}
	}
;

variable_declaration_list:
	variable_declaration
	{
	if (NOT_ONLY_PARSE)
	{
		CHECK_INVARIANT(($1 != NULL), "Non-terminal declaration statement cannot be null");

		//list<Symbol_Table_Entry *> list_decl_stmt = *$1; // pointer of list of pointer of STE

		Symbol_Table * decl_list = new Symbol_Table();
		////cout<<"Starting loop1"<<endl;
		for(list<Symbol_Table_Entry *>::iterator it=$1->begin(); it!=$1->end(); ++it){
			string decl_name = (*it)->get_variable_name();
			CHECK_INPUT ((program_object.variable_proc_name_check(decl_name) == false),
				"Variable name cannot be same as the procedure name", get_line_number());
			if(current_procedure != NULL)
			{
				CHECK_INPUT((current_procedure->get_proc_name() != decl_name),
					"Variable name cannot be same as procedure name", get_line_number());
			}
			CHECK_INPUT((decl_list->variable_in_symbol_list_check(decl_name) == false), 
					"Variable is declared twice", get_line_number());
			//Symbol_Table_Entry decl_stmt = *it;
			decl_list->push_symbol(*it);
			////cout<<"stored variable1 "<<decl_name<<endl;
		}

		$$ = decl_list;
	}
	}
|
	variable_declaration_list variable_declaration
	{
	if (NOT_ONLY_PARSE)
	{
		// if declaration is local then no need to check in global list
		// if declaration is global then this list is global list
		CHECK_INVARIANT(($2 != NULL), "The declaration statement cannot be null");
		CHECK_INVARIANT(($1 != NULL), "The declaration statement list cannot be null");

		//list<Symbol_Table_Entry *> list_decl_stmt = *$2;
		//Symbol_Table * decl_list = $1;
		////cout<<"Starting loop"<<endl;
		for(list<Symbol_Table_Entry *>::iterator it=$2->begin(); it!=$2->end(); ++it){
			string decl_name = (*it)->get_variable_name();
			CHECK_INPUT((program_object.variable_proc_name_check(decl_name) == false),
				"Procedure name cannot be same as the variable name", get_line_number());
			if(current_procedure != NULL)
			{
				CHECK_INPUT((current_procedure->get_proc_name() != decl_name),
					"Variable name cannot be same as procedure name", get_line_number());
			}

			CHECK_INPUT(($1->variable_in_symbol_list_check(decl_name) == false), 
					"Variable is declared twice", get_line_number());
			//Symbol_Table_Entry decl_stmt = *it;
			$1->push_symbol(*it);
			////cout<<"stored variable "<<decl_name<<endl;
		}
		
		$$ = $1;
	}
	}
;

variable_declaration:
	declaration ';'
	{
	if (NOT_ONLY_PARSE)
	{
		////cout<<"variable_declaration1 size "<<$1->size()<<endl;
		//list<pair<Data_Type, string> > list_pairs = *$1;
		list<Symbol_Table_Entry *> * list_ste = new list<Symbol_Table_Entry *>;
		////cout<<"variable_declaration size "<<$1->size()<<endl;
		CHECK_INVARIANT(($1 != NULL), "Pointer to list of pair of declarations cannot be null");
		for(list<pair<Data_Type, string> *>::iterator it=$1->begin(); it!=$1->end(); ++it){
			Data_Type type = (*it)->first;
			string decl_name = (*it)->second;
			Symbol_Table_Entry * decl_entry = new Symbol_Table_Entry(decl_name, type, get_line_number());
			list_ste->push_back(decl_entry);
			////cout<<"Pushed "<<decl_name<<"into variable declaration"<<endl;
		}
		//list<Symbol_Table_Entry *> list_ste;
		$$ = list_ste; // poinnter of list of pointer of STE

	}
	}
;

declaration:
	INTEGER int_declaration_names_list
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		CHECK_INVARIANT(($2 != NULL), "int_declaration_names_list cannot be null");
		//list<pair<Data_Type, string> > * list_pairs = $2;
		////cout<<"declaration1 size "<<$2->size()<<endl;
		$$ = $2; // pointer to list of pair of integer declarations
	}
	}
|
	FLOAT float_declaration_names_list
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		CHECK_INVARIANT(($2 != NULL), "float_declaration_names_list cannot be null");
		//list<pair<Data_Type, string> > * list_pairs = $2;
		//cout<<"declaration size "<<$2->size()<<endl;
		$$ = $2;
	}
	}
;

int_declaration_names_list:
	NAME
	{
	if (NOT_ONLY_PARSE)
	{
		// declare a new list
		CHECK_INVARIANT(($1 != NULL), "Name cannot be null");
		string name = *$1;
		Data_Type type = int_data_type;
		pair<Data_Type, string> * declar = new pair<Data_Type, string>(type, name);
		list<pair<Data_Type, string> *> * int_list_pairs = new list<pair<Data_Type, string> *>;
		int_list_pairs->push_back(declar);
		//cout<<"pushed "<<name<<" into integer list1"<<endl;
		$$ = int_list_pairs;
	}
	}
|
	int_declaration_names_list ',' NAME
	{
	if (NOT_ONLY_PARSE)
	{
		// push into the same list
		CHECK_INVARIANT(($1 != NULL), "Name list cannot be null");
		string name = *$3;
		Data_Type type = int_data_type;
		//list<pair<Data_Type, string> > * int_list_pairs = $1;
		pair<Data_Type, string> * declar = new pair<Data_Type, string>(type, name);
		$1->push_back(declar);
		//cout<<"pushed "<<name<<" into integer list"<<endl;
		$$ = $1;
	}
	}
;

float_declaration_names_list:
	NAME
	{
	if (NOT_ONLY_PARSE)
	{
		// declare a new list
		CHECK_INVARIANT(($1 != NULL), "Name cannot be null");
		string name = *$1;
		Data_Type type = double_data_type;
		pair<Data_Type, string> * declar = new pair<Data_Type, string>(type, name);
		list<pair<Data_Type, string> *> * float_list_pairs = new list<pair<Data_Type, string> *>;
		float_list_pairs->push_back(declar);
		//cout<<"pushed "<<name<<" into float list1"<<endl;
		$$ = float_list_pairs;
	}
	}
|
	float_declaration_names_list ',' NAME
	{
	if (NOT_ONLY_PARSE)
	{
		// push into the same list
		CHECK_INVARIANT(($1 != NULL), "Name list cannot be null");
		string name = *$3;
		Data_Type type = double_data_type;
		//list<pair<Data_Type, string> *> * float_list_pairs = $1;
		pair<Data_Type, string> * declar = new pair<Data_Type, string>(type, name);
		$1->push_back(declar);
		//cout<<"pushed "<<name<<" into float list"<<endl;
		$$ = $1;
	}
	}
;

statement_list:
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		//cout<<"SL"<<endl;
		Sequence_Ast * stmt_list = new Sequence_Ast(get_line_number());
		$$ = stmt_list;
	}
	}
|
	statement_list statement
	{
	if (NOT_ONLY_PARSE)
	{

		//ADD CODE HERE
		//cout<<"SL non empty"<<endl;
		Ast * stmt = $2;
		Sequence_Ast * stmt_list = $1;
		if(stmt_list == NULL)
		{
			stmt_list = new Sequence_Ast(get_line_number());
		}
		stmt_list->ast_push_back(stmt);
		$$ = stmt_list;
	}
	}
;

statement:
	assignment_statement
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $1;
	}
	}
|
	iteration_statement
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $1;
	}
	}
|
	selection_statement
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $1;
	}
	}
;

selection_statement:
	IF '(' boolean_expression_term ')' exp_body
	{
	if (NOT_ONLY_PARSE)
	{
		//cout<<"only IF"<<endl;
		Ast * slt_stmt = new Selection_Statement_Ast($3, $5, new Sequence_Ast(get_line_number()), get_line_number());
		$$ = slt_stmt;
	}
	}
|
	IF '(' boolean_expression_term ')' exp_body ELSE exp_body %prec WASH
	{
	if (NOT_ONLY_PARSE)
	{
		//cout<<"IF and ELSE1"<<endl;
		CHECK_INVARIANT(($7!=NULL),"else part cannot be null");
		Ast * slt_stmt = new Selection_Statement_Ast($3, $5, $7, get_line_number());
		$$ = slt_stmt;
	}
	}
;
/*
matched_statement:
	IF '(' boolean_expression_term ')' matched_statement ELSE matched_statement
	{
	if (NOT_ONLY_PARSE)
	{
		//cout<<"IF and ELSE"<<endl;
		CHECK_INVARIANT(($7!=NULL),"else part cannot be null");
		Ast * slt_stmt = new Selection_Statement_Ast($3, $5, $7, get_line_number());
		$$ = slt_stmt;
	}
	}
|
	other_than_selection_statement
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $1;
	}
	}
;
*/
exp_body:
	statement
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $1;
	}
	}
|
	'{' statement_list '}'
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $2;
	}
	}
;

iteration_statement:
	WHILE '(' boolean_expression_term ')' exp_body
	{
	if (NOT_ONLY_PARSE)
	{
		Ast *it_stmt = new Iteration_Statement_Ast($3, $5, get_line_number(), false);
		$$ = it_stmt;
	}
	}
|
	DO exp_body WHILE '(' boolean_expression_term ')'
	{
	if (NOT_ONLY_PARSE)
	{
		Ast *it_stmt = new Iteration_Statement_Ast($5, $2, get_line_number(), true);
		$$ = it_stmt;
	}
	}
;

boolean_expression_term:
	
	relational_expression
	{
	if (NOT_ONLY_PARSE)
	{
		//cout<<"R"<<endl;
		$$ = $1;
	}
	}
|
	boolean_expression
	{
	if (NOT_ONLY_PARSE)
	{
		//cout<<"B"<<endl;
		$$ = $1;
	}
	}
|
	'(' boolean_expression_term ')'
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $2;
	}
	}
;

boolean_expression:
	boolean_expression_term AND boolean_expression_term
	{
	if (NOT_ONLY_PARSE)
	{
		Boolean_Op bop = boolean_and;
		Ast * bool_exp = new Boolean_Expr_Ast($1, bop, $3, get_line_number());
		$$ = bool_exp;
	}
	}
|
	boolean_expression_term OR boolean_expression_term
	{
	if (NOT_ONLY_PARSE)
	{
		Boolean_Op bop = boolean_or;
		Ast *bool_exp = new Boolean_Expr_Ast($1, bop, $3, get_line_number());
		$$ = bool_exp;
	}
	}
|
	NOT boolean_expression_term
	{
	if (NOT_ONLY_PARSE)
	{
		Boolean_Op bop = boolean_not;
		Ast *bool_exp = new Boolean_Expr_Ast($2, bop, NULL, get_line_number());
		$$ = bool_exp;
	}
	}
;

relational_expression:
	operand LE operand
	{
	if (NOT_ONLY_PARSE)
	{
		Relational_Op rop = less_equalto;
		Ast *rel_exp = new Relational_Expr_Ast($1, rop, $3, get_line_number());
		$$ = rel_exp;
	}
	}
|
	operand LT operand
	{
	if (NOT_ONLY_PARSE)
	{
		Relational_Op rop = less_than;
		Ast *rel_exp = new Relational_Expr_Ast($1, rop, $3, get_line_number());
		$$ = rel_exp;
	}
	}
|
	operand EQ operand
	{
	if (NOT_ONLY_PARSE)
	{
		Relational_Op rop = equalto;
		Ast *rel_exp = new Relational_Expr_Ast($1, rop, $3, get_line_number());
		$$ = rel_exp;
	}
	}
|
	operand NE operand
	{
	if (NOT_ONLY_PARSE)
	{
		Relational_Op rop = not_equalto;
		Ast *rel_exp = new Relational_Expr_Ast($1, rop, $3, get_line_number());
		$$ = rel_exp;
	}
	}
|
	operand GE operand
	{
	if (NOT_ONLY_PARSE)
	{
		Relational_Op rop = greater_equalto;
		Ast *rel_exp = new Relational_Expr_Ast($1, rop, $3, get_line_number());
		$$ = rel_exp;
	}
	}
|
	operand GT operand
	{
	if (NOT_ONLY_PARSE)
	{
		Relational_Op rop = greater_than;
		Ast *rel_exp = new Relational_Expr_Ast($1, rop, $3, get_line_number());
		$$ = rel_exp;
	}
	}
;

// Make sure to call check_ast in assignment_statement and arith_expression
// Refer to error_display.hh for displaying semantic errors if any
assignment_statement:
	variable ASSIGN arith_expression ';'
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		CHECK_INVARIANT((($1 != NULL) && ($3 != NULL)), "lhs/rhs cannot be null");

		//ADD YOUR CODE HERE

		Ast *ast_stmt = new Assignment_Ast($1, $3, get_line_number());
		ast_stmt->check_ast();
		$$ = ast_stmt;
	}
	}
;

arith_expression:
		//ADD RELEVANT CODE ALONG WITH GRAMMAR RULES HERE
                // SUPPORT binary +, -, *, / operations, unary -, and allow parenthesization
                // i.e. E -> (E)
                // Connect the rules with the remaining rules given below
    operand '+' operand
	{
	if (NOT_ONLY_PARSE)
	{
		Ast *arith_stmt = new Plus_Ast($1, $3, get_line_number());
		arith_stmt->check_ast();
		$$ = arith_stmt;
	}
	}
|
	operand '-' operand
	{
	if (NOT_ONLY_PARSE)
	{
		Ast *arith_stmt = new Minus_Ast($1, $3, get_line_number());
		arith_stmt->check_ast();
		$$ = arith_stmt;
	}
	}
|
	operand '*' operand
	{
	if (NOT_ONLY_PARSE)
	{
		Ast *arith_stmt = new Mult_Ast($1, $3, get_line_number());
		arith_stmt->check_ast();
		$$ = arith_stmt;
	}
	}
|
	operand '/' operand
	{
	if (NOT_ONLY_PARSE)
	{
		Ast *arith_stmt = new Divide_Ast($1, $3, get_line_number());
		arith_stmt->check_ast();
		$$ = arith_stmt;
	}
	}
|	
	boolean_expression_term '?' operand ':' operand
	{
	if (NOT_ONLY_PARSE)
	{
		CHECK_INVARIANT(($1 != NULL), "boolean_expression_term cannot be null");
		CHECK_INVARIANT(($3 != NULL), "operand cannot be null");
		CHECK_INVARIANT(($5 != NULL), "operand cannot be null");
		Ast *arith_stmt = new Conditional_Operator_Ast($1, $3, $5, get_line_number());
		$$ = arith_stmt;
	}
	}
|
	'-' operand %prec UMINUS
	{
	if (NOT_ONLY_PARSE)
	{
		CHECK_INVARIANT(($2!=NULL), "operand cannot be NULL");
		Ast *arith_stmt = new UMinus_Ast($2, NULL, get_line_number());
		$$ = arith_stmt;
	}
	}
|
	'(' operand ')'
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $2;
	}
	}
|
	expression_term
	{
	if (NOT_ONLY_PARSE)
	{
		$$ = $1;
	}
	}
;

operand:
	arith_expression
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		CHECK_INVARIANT(($1 != NULL), "Arith expression cannot be null");
		$$ = $1;
	}
	}
;

expression_term:
	variable
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		CHECK_INVARIANT(($1 != NULL), "Variable cannot be null");
		$$ = $1;
	}
	}
|
	constant
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		CHECK_INVARIANT(($1 != NULL), "constant cannot be null");
		$$ = $1;
	}
	}
;

variable:
	NAME
	{
	if (NOT_ONLY_PARSE)
	{
		Symbol_Table_Entry * var_table_entry;

		CHECK_INVARIANT(($1 != NULL), "Variable name cannot be null");

		if (current_procedure->variable_in_symbol_list_check(*$1))
			 var_table_entry = &(current_procedure->get_symbol_table_entry(*$1));

		else if (program_object.variable_in_symbol_list_check(*$1))
			var_table_entry = &(program_object.get_symbol_table_entry(*$1));

		else
			CHECK_INPUT_AND_ABORT(CONTROL_SHOULD_NOT_REACH, "Variable has not been declared", get_line_number());

		$$ = new Name_Ast(*$1, *var_table_entry, get_line_number());
		delete $1;
	}
	}
;

constant:
	INTEGER_NUMBER
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		Ast * num_ast = new Number_Ast<int>($1, int_data_type, get_line_number());
		$$ = num_ast;
	}
	}
|
	DOUBLE_NUMBER
	{
	if (NOT_ONLY_PARSE)
	{
		//ADD CODE HERE
		Ast * num_ast = new Number_Ast<double>($1, double_data_type, get_line_number());
		$$ = num_ast;
	}
	}
;
