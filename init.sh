#!/bin/bash

root=$(pwd)
echo 
echo 'Woring directory set to ' $root
echo 
# APP
echo 
echo 'Installing app dependencies'
echo 
cd app/code
rm -rf node_modules
npm install
cd $root

# API
echo 
echo 'Restoring packages for api'
echo 
cd api/code
dotnet restore BoardZ.API.csproj
cd $root

# IDSRV
echo 
echo 'Restoring packages for identityserver'
echo 
cd idsrv/code
dotnet restore BoardZ.Id.csproj
cd $root