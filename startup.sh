#!/bin/bash

if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
        exit 1
    fi
else
    JAVACMD="/usr/local/jdk8/bin/java"
fi
if [ ! -x "$JAVACMD" ] ; then
   echo "ERROR: no available java binary found"
   exit 1
fi

if [ ! -n "$MAIN_CLASS" ] ; then
   echo "ERROR: MAIN_CLASS not set"
   exit 1
fi
CLASSPATH=".:`ls /home/youxian/webapps/lib/*.jar|tr '\n' ':'`"
${JAVACMD} -classpath $CLASSPATH -Dloader.main=$MAIN_CLASS org.springframework.boot.loader.PropertiesLauncher
