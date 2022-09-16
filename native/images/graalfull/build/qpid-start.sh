#!/bin/bash

COMMAND=""

cd /usr/local/qpid

if [[ $# -eq 0 ]];
then
    exec /usr/local/qpid/bin/qpid-server -graal -DPNAME=QPBRKR -DQPID_HOME=/usr/local/qpid -DQPID_WORK=/var/qpidwork -st BDB
else
    if [[ $1 -eq "Memory" || $1 -eq "BDB" || $1 -eq "JSON" ]];
    then
        exec /usr/local/qpid/bin/qpid-server -graal -DPNAME=QPBRKR -DQPID_HOME=/usr/local/qpid -DQPID_WORK=/var/qpidwork -st ${1}
    elif [[ $1 -eq "JDBC" ]];
    then
        exec /usr/local/qpid/bin/qpid-server -graal -DPNAME=QPBRKR -DQPID_HOME=/usr/local/qpid -DQPID_WORK=/var/qpidwork -st $1 -prop "${2}" -prop "${3}" -prop "${4}"
    fi
fi

#exec /usr/local/src/qpid/Qpid4Graal/native/images/graalfull/build/bin/qpid-server -DPNAME=QPBRKR -DQPID_HOME=/usr/local/src/qpid/Qpid4Graal/native/images/graalfull/build -DQPID_WORK=/var/qpidwork -st Memory"
