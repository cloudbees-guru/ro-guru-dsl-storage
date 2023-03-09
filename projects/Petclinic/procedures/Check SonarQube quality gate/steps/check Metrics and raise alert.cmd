echo "Sonar Metrics are not 'OK'. So this task will fail";
ectool setProperty '/myJob/outcome' "error"
ectool setProperty '/myJob/summary' "Sonar Metrics don't reach the expected status. Expected 'OK', got '$[/myJob/getLastSonarMetrics/alert_status]'"