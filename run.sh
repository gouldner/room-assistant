#!/bin/bash

DEBUG=$1

#setup nvm since we run this script as a service
export NVM_DIR="$HOME/.nvm"
. ~/.nvmSetup
#Note: This may be slow but it will select correct version of node
nvm use v8.10.0

BASEDIR=`dirname $0`
if [ "${DEBUG}" == "" ]
then
    # Quiet start
    npm start index.js >> /dev/null 2>&1
else
    # Debug start
    #npm start index.js >> ${BASEDIR}/room-assistant.log 2>&1
    npm start index.js
fi
