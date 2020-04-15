#!/bin/bash

cd ./bundles
mvn clean install

cd ../parent
mvn clean install

cd ../client
mvn clean install

cd ../server
mvn clean install
