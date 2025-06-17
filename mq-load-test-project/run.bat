@echo off
set JMETER_HOME="C:\path\to\apache-jmeter-5.6.2"
set TEST_PLAN=jmeter\test-plans\fsn-request-test.jmx
set LOG_FILE=results\logs\fsn-result.jtl
set REPORT_DIR=results\reports\fsn-report

%JMETER_HOME%\bin\jmeter.bat -n ^
  -t %TEST_PLAN% ^
  -l %LOG_FILE% ^
  -e -o %REPORT_DIR% ^
  -Jmq_hostname=RBSMQ-RS861AC.server.rbsgrp.net ^
  -Jmq_port=5111 ^
  -Jmq_channel=GRP.VNQ.RS861AC.01 ^
  -Jmq_queue_put=BDD.GRP.INT_FSN_WORKFLOW_META.QA ^
  -Jmq_manager=RS861AC ^
  -Jmq_auth=false
