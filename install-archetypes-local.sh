#!/bin/bash

cd ./parent
mvn clean install

cd ../client
mvn clean install

cd ../server
mvn clean install
