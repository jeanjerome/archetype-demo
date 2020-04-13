#!/bin/bash

mvn archetype:generate \
-DarchetypeGroupId=com.bnpp.cardif \
-DarchetypeArtifactId=sot-archetype-parent \
-DarchetypeVersion=RELEASE \
-DgroupId=com.bnpp.myproject \
-DartifactId=app-parent \
-Dversion=0.0.1-SNAPSHOT \
-DinteractiveMode=false

cd ./app-parent

mvn archetype:generate \
-DarchetypeGroupId=com.bnpp.cardif \
-DarchetypeArtifactId=sot-archetype-client \
-DarchetypeVersion=RELEASE \
-DgroupId=com.bnpp.myproject \
-DartifactId=client \
-Dversion=0.0.1-SNAPSHOT \
-Dpackage=com.bnpp.cardif.client \
-DaddSecurity=true \
-DinteractiveMode=false 

mvn archetype:generate \
-DarchetypeGroupId=com.bnpp.cardif \
-DarchetypeArtifactId=sot-archetype-server \
-DarchetypeVersion=RELEASE \
-DgroupId=com.bnpp.myproject \
-DartifactId=server \
-Dversion=0.0.1-SNAPSHOT \
-Dpackage=com.bnpp.cardif.server \
-DinteractiveMode=false

