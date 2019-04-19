#include<iostream>
#include<fstream>
#include<typeinfo>

using namespace std;

#include"common-classes.hh"
#include"error-display.hh"
#include"user-options.hh"
#include"symbol-table.hh"
#include"ast.hh"
#include"procedure.hh"
#include"program.hh"

int Ast::labelCounter(0);

Ast::Ast()
{}

Ast::~Ast()
{}

bool Ast::check_ast()
{
	stringstream msg;
	msg << "No check_ast() function for " << typeid(*this).name();
	CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
}

Data_Type Ast::get_data_type()
{
	stringstream msg;
	msg << "No get_data_type() function for " << typeid(*this).name();
	CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
}

Symbol_Table_Entry & Ast::get_symbol_entry()
{
	stringstream msg;
	msg << "No get_symbol_entry() function for " << typeid(*this).name();
	CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
}

bool Ast::is_value_zero()
{
	stringstream msg;
	msg << "No is_value_zero() function for " << typeid(*this).name();
	CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
}

void Ast::set_data_type(Data_Type dt)
{
	stringstream msg;
	msg << "No set_data_type() function for " << typeid(*this).name();
	CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
}

////////////////////////////////////////////////////////////////

Assignment_Ast::Assignment_Ast(Ast * temp_lhs, Ast * temp_rhs, int line)
: lhs(temp_lhs), rhs(temp_rhs)
{
	//ADD CODE HERE
	lineno = line;
	if(this->check_ast()){
		
	}
	else{
		stringstream msg;
		msg << "Either lhs or rhs for Assignment_Ast is NULL ";
		CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
	}
}

Assignment_Ast::~Assignment_Ast()
//: lhs(NULL), rhs(NULL)
{
	//ADD CODE HERE
}

bool Assignment_Ast::check_ast()
{
	CHECK_INVARIANT((rhs != NULL), "Rhs of Assignment_Ast cannot be null");
	CHECK_INVARIANT((lhs != NULL), "Lhs of Assignment_Ast cannot be null");

	// use typeid(), get_data_type()
	//ADD CODE HERE
	if((lhs->get_data_type()) == (rhs->get_data_type())){
		return true;
	}

	CHECK_INPUT(CONTROL_SHOULD_NOT_REACH, 
		"Assignment statement data type not compatible", lineno);
}

void Assignment_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n         Asgn:\n            LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n            RHS (";
	rhs->print(file_buffer);
	file_buffer<<")";
}

/////////////////////////////////////////////////////////////////

Name_Ast::Name_Ast(string & name, Symbol_Table_Entry & var_entry, int line)
: variable_symbol_entry(&var_entry)
{

	CHECK_INVARIANT((variable_symbol_entry->get_variable_name() == name),
		"Variable's symbol entry is not matching its name");
	//ADD CODE HERE
	lineno = line;
}

Name_Ast::~Name_Ast()
//: variable_symbol_entry(NULL), lineno(NULL)
{}

Data_Type Name_Ast::get_data_type()
{
	// refer to functions for Symbol_Table_Entry 
	//ADD CODE HERE
	return variable_symbol_entry->get_data_type();
}

Symbol_Table_Entry & Name_Ast::get_symbol_entry()
{
	//ADD CODE HERE
	return *variable_symbol_entry;
}

void Name_Ast::set_data_type(Data_Type dt)
{
	//ADD CODE HERE
	variable_symbol_entry->set_data_type(dt);
}

void Name_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"Name : "<<variable_symbol_entry->get_variable_name();
}

///////////////////////////////////////////////////////////////////////////////

template <class DATA_TYPE>
Number_Ast<DATA_TYPE>::Number_Ast(DATA_TYPE number, Data_Type constant_data_type, int line)
: constant(number)
{
	// use Ast_arity from ast.hh
	//ADD CODE HERE
	ast_num_child=zero_arity;
	node_data_type=constant_data_type;
	lineno=line;
}

template <class DATA_TYPE>
Number_Ast<DATA_TYPE>::~Number_Ast()
//: constant(NULL), ast_num_child(NULL), lineno(NULL), node_data_type(NULL)
{}

template <class DATA_TYPE>
Data_Type Number_Ast<DATA_TYPE>::get_data_type()
{
	//ADD CODE HERE
	return node_data_type;
}

template <class DATA_TYPE>
void Number_Ast<DATA_TYPE>::set_data_type(Data_Type dt)
{
	//ADD CODE HERE
	node_data_type = dt;
}

template <class DATA_TYPE>
bool Number_Ast<DATA_TYPE>::is_value_zero()
{
	//ADD CODE HERE
	if(constant == 0){
		return true;
	}
	else{
		return false;
	}
}

template <class DATA_TYPE>
void Number_Ast<DATA_TYPE>::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"Num : "<<constant;
}

///////////////////////////////////////////////////////////////////////////////

Relational_Expr_Ast::Relational_Expr_Ast(Ast * lhs, Relational_Op rop, Ast * rhs, int line)
{
	lhs_condition = lhs;
	rhs_condition = rhs;
	rel_op = rop;
	lineno = line;
	if(this->check_ast()){
		node_data_type = int_data_type;
		ast_num_child=binary_arity;
	}
	else{
		stringstream msg;
		msg << "Either lhs or rhs for Relational_Expr_Ast is NULL ";
		CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
	}
}

Relational_Expr_Ast::~Relational_Expr_Ast()
{}

Data_Type Relational_Expr_Ast::get_data_type()
{
	return node_data_type;
}

void Relational_Expr_Ast::set_data_type(Data_Type dt)
{
	node_data_type=dt;
}

bool Relational_Expr_Ast::check_ast()
{
	CHECK_INVARIANT(((lhs_condition!=NULL)&&(rhs_condition!=NULL)),"Operands cannot be NULL");
	if((lhs_condition->get_data_type()) == (rhs_condition->get_data_type())){
		return true;
	}
	CHECK_INPUT(CONTROL_SHOULD_NOT_REACH, "Relational statement data type not compatible", lineno);
}

void Relational_Expr_Ast::print(ostream & file_buffer)
{
	switch(rel_op){
		case less_equalto: file_buffer<<"\n            Condition: LE\n               LHS ("; break;
		case less_than: file_buffer<<"\n            Condition: LT\n               LHS ("; break;
		case greater_than: file_buffer<<"\n            Condition: GT\n               LHS ("; break;
		case greater_equalto: file_buffer<<"\n            Condition: GE\n               LHS ("; break;
		case equalto: file_buffer<<"\n            Condition: EQ\n               LHS ("; break;
		case not_equalto: file_buffer<<"\n            Condition: NE\n               LHS ("; break;
		default:file_buffer<<"";
	}
	//file_buffer<<"\n            Condition: "<<rel_op<<"\n               LHS (";
	lhs_condition->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               RHS (";
	rhs_condition->print(file_buffer);
	file_buffer<<")";
}

///////////////////////////////////////////////////////////////////////////////

Boolean_Expr_Ast::Boolean_Expr_Ast(Ast * lhs, Boolean_Op bop, Ast * rhs, int line)
{
	lhs_op = lhs;
	rhs_op = rhs;
	bool_op = bop;
	lineno = line;
	if(this->check_ast()){
		node_data_type = int_data_type;
		if(bop==boolean_not){
			ast_num_child=unary_arity;
		}
		else{
			ast_num_child=binary_arity;			
		}
	}
	else{
		stringstream msg;
		msg << "Either lhs or rhs for Boolean_Expr_Ast is NULL ";
		CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
	}
}

Boolean_Expr_Ast::~Boolean_Expr_Ast()
{}

Data_Type Boolean_Expr_Ast::get_data_type()
{
	return node_data_type;
}

void Boolean_Expr_Ast::set_data_type(Data_Type dt)
{
	node_data_type=dt;
}

bool Boolean_Expr_Ast::check_ast()
{
	if(bool_op==boolean_not){
		CHECK_INVARIANT(((lhs_op!=NULL)),"Operand cannot be NULL");
		return true;
	}
	else{
		CHECK_INVARIANT(((lhs_op!=NULL)&&(rhs_op!=NULL)),"Operands cannot be NULL");
		if((lhs_op->get_data_type()) == (rhs_op->get_data_type())){
			return true;
		}
	}
	CHECK_INPUT(CONTROL_SHOULD_NOT_REACH, "Relational statement data type not compatible", lineno);
}

void Boolean_Expr_Ast::print(ostream & file_buffer)
{
	switch(bool_op){
		case boolean_not : file_buffer<<"\n            Condition: NOT\n               RHS (";
							rhs_op->print(file_buffer);
							file_buffer<<")";
							return;
							break;
		case boolean_or : file_buffer<<"\n            Condition: OR\n               LHS ("; break;
		case boolean_and : file_buffer<<"\n            Condition: AND\n               LHS ("; break;
	}
	//file_buffer<<"\n            Condition: "<<bool_op<<"\n               LHS (";
	lhs_op->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               RHS (";
	rhs_op->print(file_buffer);
	file_buffer<<")";
}

///////////////////////////////////////////////////////////////////////////////

Selection_Statement_Ast::Selection_Statement_Ast(Ast * cond1,Ast* then_part1, Ast* else_part1, int line)
{
	cond = cond1;
	then_part = then_part1;
	else_part = else_part1;
	lineno = line;
	if(this->check_ast()){
		node_data_type = void_data_type;
	}
	else{
		stringstream msg;
		msg << "Selection_Statement_Ast is not in correct format ";
		CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
	}
}

Selection_Statement_Ast::~Selection_Statement_Ast()
{}

Data_Type Selection_Statement_Ast::get_data_type()
{
	return node_data_type;
}

void Selection_Statement_Ast::set_data_type(Data_Type dt)
{
	node_data_type=dt;
}

bool Selection_Statement_Ast::check_ast()
{
	CHECK_INVARIANT(((cond!=NULL)),"Condition cannot be NULL");
	CHECK_INVARIANT(((then_part!=NULL)),"Then part cannot be NULL");
	CHECK_INVARIANT(((else_part!=NULL)),"Else part cannot be NULL");
	return true;
	CHECK_INPUT(CONTROL_SHOULD_NOT_REACH, "Selection statement data type not compatible", lineno);
}

void Selection_Statement_Ast::print(ostream & file_buffer)
{
	file_buffer<<"\n         IF : \n         CONDITION (";
	cond->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n         THEN (";
	then_part->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n         ELSE (";
	else_part->print(file_buffer);
	file_buffer<<")";
}
///////////////////////////////////////////////////////////////////////////////

Iteration_Statement_Ast::Iteration_Statement_Ast(Ast * cond1, Ast* body1, int line, bool do_form)
{
	cond = cond1;
	body = body1;
	is_do_form = do_form;
	lineno = line;
	if(this->check_ast()){
		node_data_type = void_data_type;
	}
	else{
		stringstream msg;
		msg << "Iteration_Statement_Ast is not in correct format ";
		CHECK_INVARIANT(CONTROL_SHOULD_NOT_REACH, msg.str());
	}
}

Iteration_Statement_Ast::~Iteration_Statement_Ast()
{}

Data_Type Iteration_Statement_Ast::get_data_type()
{
	return node_data_type;
}

void Iteration_Statement_Ast::set_data_type(Data_Type dt)
{
	node_data_type=dt;
}

bool Iteration_Statement_Ast::check_ast()
{
	CHECK_INVARIANT(((cond!=NULL)),"Condition cannot be NULL");
	CHECK_INVARIANT(((body!=NULL)),"Loop body cannot be NULL");
	return true;
	CHECK_INPUT(CONTROL_SHOULD_NOT_REACH, "Iteration statement data type not compatible", lineno);
}

void Iteration_Statement_Ast::print(ostream & file_buffer)
{
	if(is_do_form)
	{
		file_buffer<<"\n         DO (";
		body->print(file_buffer);
		file_buffer<<")";
		file_buffer<<"\n         WHILE CONDITION (";
		cond->print(file_buffer);
		file_buffer<<")";
	}
	else{
		file_buffer<<"\n         WHILE : \n         CONDITION (";
		cond->print(file_buffer);
		file_buffer<<")";
		file_buffer<<"\n         BODY (";
		body->print(file_buffer);
		file_buffer<<")";
	}
}

///////////////////////////////////////////////////////////////////////////////

Arithmetic_Expr_Ast::~Arithmetic_Expr_Ast()
{}

Data_Type Arithmetic_Expr_Ast::get_data_type()
{
	//ADD CODE HERE
	return node_data_type;
}

void Arithmetic_Expr_Ast::set_data_type(Data_Type dt)
{
	//ADD CODE HERE
	node_data_type = dt;
}

bool Arithmetic_Expr_Ast::check_ast()
{
	// use get_data_type(), typeid()
	//ADD CODE HERE
	CHECK_INVARIANT(((lhs!=NULL)&&(rhs!=NULL)),"Operands cannot be NULL")
	if((lhs->get_data_type()) == (rhs->get_data_type())){
		return true;
	}
	CHECK_INPUT(CONTROL_SHOULD_NOT_REACH, "Arithmetic statement data type not compatible", lineno);
}

/////////////////////////////////////////////////////////////////////

Plus_Ast::Plus_Ast(Ast * l, Ast * r, int line)
{
	// set arity and data type
	//ADD CODE HERE
	ast_num_child=binary_arity;
	lhs=l;
	rhs=r;
	lineno=line;
	node_data_type = r->get_data_type();
}

Plus_Ast::~Plus_Ast()
{}

void Plus_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n            Arith: PLUS\n               LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               RHS (";
	rhs->print(file_buffer);
	file_buffer<<")";
}

/////////////////////////////////////////////////////////////////

Minus_Ast::Minus_Ast(Ast * l, Ast * r, int line)
{
	//ADD CODE HERE
	ast_num_child=binary_arity;
	lhs=l;
	rhs=r;
	lineno=line;
	node_data_type = r->get_data_type();
}

Minus_Ast::~Minus_Ast()
{}

void Minus_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n            Arith: MINUS\n               LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               RHS (";
	rhs->print(file_buffer);
	file_buffer<<")";
}

//////////////////////////////////////////////////////////////////

Mult_Ast::Mult_Ast(Ast * l, Ast * r, int line)
{
	//ADD CODE HERE
	ast_num_child=binary_arity;
	lhs=l;
	rhs=r;
	lineno=line;
	node_data_type = r->get_data_type();
}
Mult_Ast::~Mult_Ast()
{}

void Mult_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n            Arith: MULT\n               LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               RHS (";
	rhs->print(file_buffer);
	file_buffer<<")";
}

//////////////////////////////////////////////////////////////////

Conditional_Operator_Ast::Conditional_Operator_Ast(Ast* cond1, Ast* l, Ast* r, int line)
{
	//ADD CODE HERE
	cond = cond1;
	ast_num_child=ternary_arity;
	lhs=l;
	rhs=r;
	lineno=line;
	node_data_type = r->get_data_type();
}
Conditional_Operator_Ast::~Conditional_Operator_Ast()
{}

void Conditional_Operator_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n            Arith: Conditional\n               COND (";
	cond->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               RHS (";
	rhs->print(file_buffer);
	file_buffer<<")";
}

////////////////////////////////////////////////////////////////////

Divide_Ast::Divide_Ast(Ast * l, Ast * r, int line)
{
	//ADD CODE HERE
	ast_num_child=binary_arity;
	lhs=l;
	rhs=r;
	lineno=line;
	node_data_type = r->get_data_type();
}

Divide_Ast::~Divide_Ast()
{}

void Divide_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n            Arith: DIV\n               LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
	file_buffer<<"\n               RHS (";
	rhs->print(file_buffer);
	file_buffer<<")";
}

//////////////////////////////////////////////////////////////////////

UMinus_Ast::UMinus_Ast(Ast * l, Ast * r, int line)
{
	//ADD CODE HERE
	ast_num_child=unary_arity;
	lhs=l;
	rhs=r;
	lineno=line;
	node_data_type = l->get_data_type();
}

UMinus_Ast::~UMinus_Ast()
{}

void UMinus_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n            Arith: UMINUS\n               LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
}

//////////////////////////////////////////////////////////////////////

Sequence_Ast::Sequence_Ast(int line)
{
	lineno = line;
}

Sequence_Ast::~Sequence_Ast()
{}

void Sequence_Ast::ast_push_back(Ast * ast)
{
	statement_list.push_back(ast);
}

void Sequence_Ast::print(ostream & file_buffer)
{
	file_buffer<<"\n      Sequence Ast:\n";
	for(list<Ast *>::iterator it=statement_list.begin(); it!=statement_list.end(); ++it){
		(*it)->print(file_buffer);
	}
}

template class Number_Ast<double>;
template class Number_Ast<int>;
