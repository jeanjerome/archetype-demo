#!/bin/bash

mkdir ./test-dir
cd ./test-dir

mvn archetype:generate \
  -DarchetypeGroupId=com.sot.module \
  -DarchetypeArtifactId=archetype-parent \
  -DarchetypeVersion=RELEASE \
  -DgroupId=com.example.myproject \
  -DartifactId=app-parent \
  -Dversion=0.0.1-SNAPSHOT \
  -DinteractiveMode=false

cd ./app-parent

mvn archetype:generate \
  -DarchetypeGroupId=com.sot.module \
  -DarchetypeArtifactId=archetype-client \
  -DarchetypeVersion=RELEASE \
  -DgroupId=com.example.myproject \
  -DartifactId=client \
  -Dversion=0.0.1-SNAPSHOT \
  -Dpackage=com.example.myproject.client \
  -DaddSecurity=true \
  -DinteractiveMode=false

mvn archetype:generate \
  -DarchetypeGroupId=com.sot.module \
  -DarchetypeArtifactId=archetype-server \
  -DarchetypeVersion=RELEASE \
  -DgroupId=com.example.myproject \
  -DartifactId=server \
  -Dversion=0.0.1-SNAPSHOT \
  -Dpackage=com.example.myproject.server \
  -DinteractiveMode=false
