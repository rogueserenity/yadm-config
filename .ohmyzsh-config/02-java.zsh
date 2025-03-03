
function remove_java_path() {
  set -o shwordsplit
  LOOP_PATH=`echo ${PATH} | tr ":" " "`
  TMP_PATH=""
  for ENTRY in $LOOP_PATH
  do
    if [[ $ENTRY != /Library/Java/* ]]
    then
      TMP_PATH=${TMP_PATH}:${ENTRY}
    fi
  done
  export PATH=`echo ${TMP_PATH} | sed s/^://`
}

function set_java_version() {
  VERSION=$1
  remove_java_path
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/${VERSION}/Contents/Home
  export PATH=${JAVA_HOME}/bin:${PATH}
}

function set_java_and_print() {
  set_java_version $1
  java -version
}

#JAVA VERSION ALIASES
alias j17='set_java_and_print temurin-17.jdk'
alias j21='set_java_and_print temurin-21.jdk'

set_java_version temurin-21.jdk