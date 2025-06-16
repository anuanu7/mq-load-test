#!/bin/bash
JMETER_HOME=/path/to/apache-jmeter-5.6.2
TEST_PLAN=jmeter/test-plans/psn-request-test.jmx
LOG_DIR=results/logs
REPORT_DIR=results/reports
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p "$LOG_DIR" "$REPORT_DIR"

$JMETER_HOME/bin/jmeter -n \
  -t $TEST_PLAN \
  -l $LOG_DIR/result_$TIMESTAMP.jtl \
  -e -o $REPORT_DIR/report_$TIMESTAMP \
  -Jmq_hostname=RBSMQ-RS861AC.server.rbsgrp.net \
  -Jmq_port=5111 \
  -Jmq_channel=GRP.VNQ.RS861AC.01 \
  -Jmq_queue_put=BDD.GRP.INT_PSN_PROCESS_DETAILS_FILECHANNEL.QA \
  -Jmq_manager=RS861AC \
  -Jmq_user_id= \
  -Jmq_user_password= \
  -Jmq_auth=false
