#!/bin/sh
#echo "Could not find 'java' executable in JAVA_HOME or PATH."
#JAVA_HOME="/home"
if [ -n "$JAVA_HOME" ]
then
  java_cmd="$JAVA_HOME/java"
else
  java_cmd="$(which java)"
fi

#java_cmd=""

if [ -z "$java_cmd" -o ! -x "$java_cmd" ] ; then
  echo "$java_cmd"
  echo "$JAVA_HOME"
  echo "Could not find 'java' executable in JAVA_HOME or PATH."
  
fi

jar_file=/opt/sonar-scanner/lib/sonar-scanner-cli-4.2.0.1873.jar
sonar_scanner_home=/opt
project_home=/opt/sonar-scanner

exec "$java_cmd" \
  -Djava.awt.headless=true \
  $SONAR_SCANNER_OPTS \
  $SONAR_SCANNER_DEBUG_OPTS \
  -classpath  "$jar_file" \
  -Dscanner.home="$sonar_scanner_home" \
  -Dproject.home="$project_home" \
  org.sonarsource.scanner.cli.Main "$@"