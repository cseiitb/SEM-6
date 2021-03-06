#include<iostream>
#include<fstream>
#include<typeinfo>

using namespace std;

#include"common-classes.hh"
#include"error-display.hh"
#include"user-options.hh"
#include"local-environment.hh"
#include"symbol-table.hh"
#include"ast.hh"
#include"sequence-ast.hh"
#include"procedure.hh"
#include"program.hh"

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
	if(typeid(lhs->get_data_type()) == typeid(rhs->get_data_type())){
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
	if(typeid(lhs->get_data_type()) == typeid(rhs->get_data_type())){
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

void UMinus_Ast::print(ostream & file_buffer)
{
	//ADD CODE HERE
	file_buffer<<"\n            Arith: UMINUS\n               LHS (";
	lhs->print(file_buffer);
	file_buffer<<")";
}


template class Number_Ast<double>;
template class Number_Ast<int>;
