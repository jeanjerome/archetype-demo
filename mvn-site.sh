#!/bin/bash

cd ./bundles
mvn site

cd ../parent
mvn site

cd ../client
mvn site

cd ../server
mvn site
