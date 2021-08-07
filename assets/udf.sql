
-- Auto Generated Snowflake Java UDF for model loans.mojo

-- create Java UDF to score using a Driverless AI Mojo
create function H2OScore_Java(params String, rowData ARRAY)
returns variant language java
imports = ('@java_udf_stage/h2oScorePackages/H2oDaiScore-0.0.1.jar',
	'@java_udf_stage/h2oScorePackages/mojo2-runtime.jar', 
	'@java_udf_stage/h2oScorePackages/loans.mojo',
	'@java_udf_stage/h2oScorePackages/license.sig')
handler = 'h2oScorePackages.H2oDaiScore.h2oDaiScore';

-- Example SQL to score using a Driverless AI mojo
select ID, H2OScore_Java('Modelname=loans.mojo', ARRAY_CONSTRUCT(loan_amnt, term, installment, grade, sub_grade, emp_length, home_ownership, annual_inc, verification_status, issue_d, purpose, addr_state, dti, inq_last_6mths, open_acc, revol_util, total_acc, credit_length)) as H2OPrediction from <add-table-name>;
