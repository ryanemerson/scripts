#!/bin/bash
JAVA_HOME=$1
BIN=/usr/bin

echo $1

alternatives --install $BIN/java java $JAVA_HOME/bin/java 120 \
--slave $BIN/keytool keytool $JAVA_HOME/bin/keytool \
--slave $BIN/rmiregistry rmiregistry $JAVA_HOME/bin/rmiregistry

alternatives --install $BIN/javac javac $JAVA_HOME/bin/javac 120 \
--slave $BIN/jar  jar  $JAVA_HOME/bin/jar \
--slave $BIN/rmic rmic $JAVA_HOME/bin/rmic \
--slave $BIN/jconsole jconsole $JAVA_HOME/bin/jconsole