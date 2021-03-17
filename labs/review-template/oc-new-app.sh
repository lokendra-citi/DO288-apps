#!/bin/bash

oc new-app --name todo --file todo-template.yaml \
    -p APP_GIT_URL=https://github.com/lokendra-citi/DO288-apps \
    -p NPM_PROXY=http://nexus-common.apps.cluster.domain.example.com/repository/nodejs \
    -p PASSWORD=mypass \
    -p CLEAN_DATABASE=true \
    -p HOSTNAME=quotesapi-loken-quotes1.apps.shared-na4.na4.openshift.opentlc.com
    # ADD MISSING PARAMETERS AND CHANGE PARAMETER VALUES IF NEEDED
