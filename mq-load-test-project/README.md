This project provides a structured and reusable framework to load test IBM MQ queues using Apache JMeter and the MQMeter plugin, with a static JSON message.

Prerequisites
 Apache JMeter 5.6.2

mqmeter-2.1.1.jar from GitHub Releases

com.ibm.mq.allclient.jar from your MQ client distribution

Place both JARs in:

bash
Copy
Edit
jmeter/lib/

🖥️ Run the Test
Use the provided Windows batch script:

bash
Copy
Edit
scripts\run-fxn-test.bat
It will:

Clean previous logs

Run the test in headless mode

Generate HTML report in results/reports/fsn-report/

Open the report in a browser:

bash
Copy
Edit
results/reports/fsn-report/index.html
📈 Scaling for Load
To increase volume:

Threads: number of parallel producers

Loop Count: number of messages per producer

Example:

Threads = 10

Loop Count = 100

➜ Sends 1,000 messages



