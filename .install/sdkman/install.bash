#!/usr/bin/env bash
set -e
err_report() {
  echo -e "\e[31mError on line $1 in file $0\e[39m"
}
trap 'err_report $LINENO' ERR

# SDKMAN!
# Source bashrc to get the nvm command
. "${HOME}/.bashrc"
hash "sdk" 2>/dev/null || {
  curl -s "https://get.sdkman.io" | bash
  . "${HOME}/.bashrc"
}

sdk install java
# http://groovy-lang.org
sdk install groovy
# http://www.scala-lang.org
sdk install scala
# https://kotlinlang.org
sdk install kotlin
# http://gradle.org
sdk install gradle
# http://maven.apache.org
sdk install maven
# http://ant.apache.org
sdk install ant
# # http://gradle.org
sdk install sbt
