-- Auto Generated SQL Worksheet for model loans.mojo using the following SQL command:

-- Score all rows in the table
select ID, H2OScore_Java('Modelname=loans.mojo', ARRAY_CONSTRUCT(loan_amnt, term, installment, grade, sub_grade, emp_length, home_ownership, annual_inc, verification_status, issue_d, purpose, addr_state, dti, inq_last_6mths, open_acc, revol_util, total_acc, credit_length)) as H2OPrediction from <add-table-name>;

-- Create a View to return only some rows using a threshold of .80
create view myView as
SELECT *, H2OScore_Java('Modelname=loans.mojo Prediction 1', loan_amnt, term, installment, grade, sub_grade, emp_length, home_ownership, annual_inc, verification_status, issue_d, purpose, addr_state, dti, inq_last_6mths, open_acc, revol_util, total_acc, credit_length )
	as H2OPrediction from <add-table-name> 
	where H2OScore_Java('Modelname=loans.mojo Prediction 1', loan_amnt, term, installment, grade, sub_grade, emp_length, home_ownership, annual_inc, verification_status, issue_d, purpose, addr_state, dti, inq_last_6mths, open_acc, revol_util, total_acc, credit_length )
	>= 0.80;

SELECT * from myView;

-- Back Testing using Time Travel
SELECT *, H2OScore_Java('Modelname=loans.mojo', loan_amnt, term, installment, grade, sub_grade, emp_length, home_ownership, annual_inc, verification_status, issue_d, purpose, addr_state, dti, inq_last_6mths, open_acc, revol_util, total_acc, credit_length )
	as H2OPrediction from <add-table-name> at (offset => -60*1);

-- Process overnight updates at 2AM everyday
CREATE TASK batch_update
	WAREHOUSE = <add-warehouse-name>
	SCHEDULE = 'USING CRON 0 2 * * * UTC' 
	TIMESTAMP_INPUT_FORMAT = 'YYYY-MM-DD HH24'
	AS UPDATE <add-table-name> set <add-target-column-name>=H2OScore_Java('Modelname=loans.mojo', loan_amnt, term, installment, grade, sub_grade, emp_length, home_ownership, annual_inc, verification_status, issue_d, purpose, addr_state, dti, inq_last_6mths, open_acc, revol_util, total_acc, credit_length );