@echo off
set JMETER_HOME=C:\path\to\apache-jmeter-5.6.2
set TEST_PLAN=fxn-working.jmx
set RESULTS_DIR=results
set LOG_FILE=%RESULTS_DIR%\fxn-result.jtl
set REPORT_DIR=%RESULTS_DIR%\fxn-report

REM Create results directory if it doesn't exist
if not exist %RESULTS_DIR% (
    mkdir %RESULTS_DIR%
)

REM Delete old result file if it exists
if exist %LOG_FILE% (
    del /f /q %LOG_FILE%
)

REM Delete and recreate report directory
if exist %REPORT_DIR% (
    rmdir /s /q %REPORT_DIR%
)
mkdir %REPORT_DIR%

REM Run JMeter test
"%JMETER_HOME%\bin\jmeter.bat" -n -t %TEST_PLAN% -l %LOG_FILE% -e -o %REPORT_DIR%

pause
