#!/bin/bash

SRCDIR=$( cd -P $(dirname ${BASH_SOURCE[0]}); echo $PWD )

source $SRCDIR/checkVirtualEnv.sh
source $SRCDIR/spark_config.sh


/bin/date
echo "running getMLBStats.sh"
$SRCDIR/getMLBStats.sh
RETVAL=$?
if [[ $RETVAL -gt 0 ]]; then
    echo "getMLBStats failed."
    exit 1
fi

/bin/date
