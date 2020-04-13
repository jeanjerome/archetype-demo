#!/bin/bash

mkdir test-dir
cd test-dir

mvn archetype:generate \
  -DarchetypeGroupId=com.sot.module \
  -DarchetypeArtifactId=archetype-parent \
  -DarchetypeVersion=RELEASE \
  -DgroupId=com.example.myproject \
  -DartifactId=app-parent \
  -Dversion=0.0.1-SNAPSHOT \
  -DinteractiveMode=false \
  -DarchetypeCatalog=internal

cd app-parent

mvn archetype:generate \
  -DarchetypeGroupId=com.sot.module \
  -DarchetypeArtifactId=archetype-client \
  -DarchetypeVersion=RELEASE \
  -DgroupId=com.example.myproject \
  -DartifactId=client \
  -Dversion=0.0.1-SNAPSHOT \
  -Dpackage=com.example.myproject.client \
  -DaddSecurity=Y \
  -DinteractiveMode=false \
  -DarchetypeCatalog=internal

mvn archetype:generate \
  -DarchetypeGroupId=com.sot.module \
  -DarchetypeArtifactId=archetype-server \
  -DarchetypeVersion=RELEASE \
  -DgroupId=com.example.myproject \
  -DartifactId=server \
  -Dversion=0.0.1-SNAPSHOT \
  -Dpackage=com.example.myproject.server \
  -DinteractiveMode=false \
  -DarchetypeCatalog=internal

mvn au.com.acegi:xml-format-maven-plugin:xml-format
