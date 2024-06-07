@ECHO OFF
SET tooling_jar=tooling-3.5.0.jar
SET input_cache_path=%~dp0input-cache
SET resources_path=%~dp0input/resources
SET ig_ini_path=ig.ini

ECHO Checking internet connection...
PING tx.fhir.org -n 1 -w 1000 | FINDSTR TTL && GOTO isonline
ECHO We're offline...
SET fsoption=
GOTO igpublish

:isonline
ECHO We're online, setting publish to the Connectathon sandbox FHIR server
rem SET fsoption=-fs http://localhost:8080/cqf-ruler-r4/fhir/

:igpublish

SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8

IF EXIST "%input_cache_path%\%tooling_jar%" (
	ECHO running: JAVA -jar "%input_cache_path%\%tooling_jar%" -RefreshIG -root-dir=%~dp0 -rp="%resources_path%" -ip="%ig_resource_path%" -t -d -p %fsoption%
	JAVA -Xmx2048M -jar "%input_cache_path%\%tooling_jar%" -RefreshIG -root-dir=%~dp0 -rp="%resources_path%" -ip="%ig_resource_path%" -t -d -p %fsoption%
) ELSE If exist "..\%tooling_jar%" (
	ECHO running: JAVA -jar "..\%tooling_jar%" -RefreshIG -root-dir=%~dp0 -rp="%resources_path%" -ip="%ig_resource_path%" -t -d -p %fsoption%
	JAVA -Xmx2048M -jar "..\%tooling_jar%" -RefreshIG -root-dir=%~dp0 -rp="%resources_path%" -ip="%ig_resource_path%" -t -d -p %fsoption%
) ELSE (
	ECHO IG Refresh NOT FOUND in input-cache or parent folder.  Please run _updateCQFTooling.  Aborting...
)

PAUSE
