#!/bin/bash
JBOSS_HOME=$(pwd)
NODE_NAME="wf-dist1"
CONFIG="standalone-ha.xml"
OFFSET=100

CMD="./bin/standalone.sh "

if [ ! -z $NODE_NAME ]
then
    CMD="$CMD -Djboss.node.name=$NODE_NAME "
fi

if [ ! -z $CONFIG ]
then
    CMD="$CMD -c=$CONFIG "
fi

if [ ! -z $OFFSET ]
then
    CMD="$CMD -Djboss.socket.binding.port-offset=$OFFSET "
fi

reset && $CMD
