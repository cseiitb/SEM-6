%filenames="scanner"
%lex-source="scanner.cc"

%%

// use store_token_name(<TOKEN>) to correctly generate tokens file

"int"	{
			store_token_name("INTEGER");
			return Parser::INTEGER;
		}

"float"	{
			store_token_name("FLOAT");
			return Parser::FLOAT;
		}

"void"	{
			store_token_name("VOID");
			return Parser::VOID;
		}

/*"return"	{
				store_token_name("RETURN");
				return Parser::RETURN;
			}
*/
"if"	{
			store_token_name("IF");
			return Parser::IF;
		}
"else"	{
			store_token_name("ELSE");
			return Parser::ELSE;
		}
"while"	{
			store_token_name("WHILE");
			return Parser::WHILE;
		}
"do"	{
			store_token_name("DO");
			return Parser::DO;
		}
=	{
		store_token_name("ASSIGN_OP");
		return Parser::ASSIGN;
	}

[*+/-]	{
		store_token_name("ARITHOP");
		return matched()[0];
	}

">="	{
			store_token_name("GE");
			return Parser::GE;
		}

"<="	{
			store_token_name("LE");
			return Parser::LE;
		}

"=="	{
			store_token_name("EQ");
			return Parser::EQ;
		}

"!="	{
			store_token_name("NE");
			return Parser::NE;
		}

"<"		{
			store_token_name("LT");
			return Parser::LT;
		}

">"		{
			store_token_name("EQ");
			return Parser::GT;
		}

"&&"	{
			store_token_name("AND");
			return Parser::AND;
		}

"||"	{
			store_token_name("OR");
			return Parser::OR;
		}

"!"	{
			store_token_name("NOT");
			return Parser::NOT;
		}

"?"	{
		store_token_name("META CHAR");
		return matched()[0];
	}

[:,();{}]	{
		store_token_name("META CHAR");
		return matched()[0];
	}

[[:alpha:]_][[:alpha:][:digit:]_]* {

					store_token_name("NAME");
					// We get a pointer to the value stack.
	
					ParserBase::STYPE__ * val = getSval();

					// In this case we to want to process the lexeme. We
					// wish to pass the string value directly. So we choose
					// the field name string_value from the union declared
					// in the parser.yy file.

					val->string_value = new std::string(matched());

					// Finally we return the token.

					return Parser::NAME; 
				}

[[:digit:]]+	{
		store_token_name("NUM");

		// We first get a pointer to STYPE__ (which is the type of the values of
		// grammar symbols of the grammar rules in the parser script. We declare 
		// this  type using the %union directive in the parser.yy file.

 		ParserBase::STYPE__ *val = getSval();

		// In order to pass numbers, we first convert the lexeme which is a string,
                // to an integer value using the atoi function.
                // We then set the value using appropriate field name of the union declared
                // in the parser.yy file. In this case, we want to pass an integer value 
		// which is stored in the field name integer_value.

                val->integer_value = atoi(matched().c_str());

		// Finally we return the token.

		return Parser::INTEGER_NUMBER; 
	}

[[:digit:]]+"."[[:digit:]]+(("e"[-+][[:digit:]]+)?)	{
		store_token_name("FNUM");
		ParserBase::STYPE__ *val = getSval();
		val->double_value = atof(matched().c_str());
		return Parser::DOUBLE_NUMBER; 
	}

\n    		|
";;".*  	|
[ \t]*";;".*	|
[ \t]*"//".*	|
[ \t]		{
			if (command_options.is_show_tokens_selected())
				ignore_token();
		}

.		{ 
			string error_message;
			error_message =  "Illegal character `" + matched();
			error_message += "' on line " + lineNr();
			
			CHECK_INPUT(CONTROL_SHOULD_NOT_REACH, error_message, lineNr());
		}
%%

//.		{
//			return matched()[0];	
//		}
