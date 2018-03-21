#!/bin/bash

rm -rf thrift-temp
git clone https://github.com/apache/thrift.git thrift-temp 

cp -rf Thrift.csproj ./thrift-temp/lib/netcore/Thrift 

pushd ./thrift-temp/lib/netcore/Thrift
git checkout tags/0.11.0
dotnet build
dotnet pack
popd
