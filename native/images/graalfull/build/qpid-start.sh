#!/bin/bash

cd /usr/local/qpid

/usr/local/qpid/bin/qpid-server -graal -DPNAME=QPBRKR -DQPID_HOME=/usr/local/qpid -DQPID_WORK=/var/qpidwork -st BDB


#/usr/local/src/qpid/Qpid4Graal/native/images/graalfull/build/bin/qpid-server -DPNAME=QPBRKR -DQPID_HOME=/usr/local/src/qpid/Qpid4Graal/native/images/graalfull/build -DQPID_WORK=/var/qpidwork -st Memory
