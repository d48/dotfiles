#!/bin/bash  

# prints first column from output of jobs
# todo: need better grep/search for launch-app.sh
JOBLINE=`ps ax | grep [scripts/launch]-app.sh`

echo "running kill -TERM -${JOBLINE}"
kill -TERM -${JOBLINE}
exit 1
