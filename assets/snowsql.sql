-- Auto Generated SnowSQL commands for model loans.mojo

--execute the SnowSQL command:
--snowsql -a <account-name> -u <user> -d <database> -s <schema> -w <warehouse> -f snowsql-loans.mojo
put file://loans.mojo @java_udf_stage/h2oScorePackages/;
--If not already uploaded uncomment these lines
--put file://H2oDaiScore-0.0.3.jar @java_udf_stage/h2oScorePackages/;
--put file://mojo2-runtime.jar @java_udf_stage/h2oScorePackages/;
--put file://license.sig @java_udf_stage/h2oScorePackages/;
--put file://h2o-genmodel-3.28.0.1.jar @java_udf_stage/h2oScorePackages/;