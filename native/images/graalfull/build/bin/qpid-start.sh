#!/bin/bash

#./qpid-server -graal -DPNAME=QPBRKR -DQPID_HOME=/usr/local/qpid -DQPID_WORK=/var/qpidwork -st Memory
./qpid-server -graal -DPNAME=QPBRKR -DQPID_HOME=/usr/local/src/qpid/Qpid4Graal/native/images/graalfull/build -DQPID_WORK=/var/qpidwork -st Memory
