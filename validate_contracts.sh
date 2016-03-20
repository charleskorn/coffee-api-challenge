#!/usr/bin/env bash
set -e

PORT=9000
PID_FILE=contracts_server.pid

bundle exec rackup config.ru -p $PORT -P $PID_FILE &

if bundle exec rake pacto:validate["http://localhost:$PORT","contracts"]; then
  echo "All tests passed!"
else
  EXIT_CODE=$?
  echo "One or more contracts failed, exit code was $EXIT_CODE."
fi

kill `cat $PID_FILE`
rm $PID_FILE

exit $EXIT_CODE
