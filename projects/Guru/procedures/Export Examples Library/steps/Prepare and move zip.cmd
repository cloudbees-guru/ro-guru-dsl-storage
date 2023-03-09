cd /tmp/cbflow-exports/examples-library-$[/myJob/timestamp]
tar -czvf examples-library-$[/myJob/timestamp].tar.gz *
#mv examples-library-$[/myJob/timestamp].tar.gz /opt/electriccloud/electriccommander/apache/htdocs/examples-library-$[/myJob/timestamp].tar.gz
#rm -rf /opt/cbflow-exports/examples-library-$[/myJob/timestamp]