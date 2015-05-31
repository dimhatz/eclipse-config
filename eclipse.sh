#!/bin/bash

export ECLIPSE_HOME=$HOME/eclipse
export GDK_NATIVE_WINDOWS=true
${ECLIPSE_HOME}/eclipse "$@"
