#!/usr/bin/env sh

export PATH=$PATH:./Tools/

rm -rf Sources/Clients/* Sources/Protos/*

Tools/protoc \
--proto_path=Dependency/jeak_proto/ \
--plugin=Tools/protoc-gen-grpc-swift \
--grpc-swift_opt=Visibility=Public \
--grpc-swift_opt=Server=false \
--grpc-swift_opt=FileNaming=DropPath \
--grpc-swift_out=Sources/Clients \
--plugin==Tools/protoc-gen-swift \
--swift_opt=Visibility=Public \
--swift_out=Sources/Protos \
-I Dependency/jeak_proto \
Dependency/jeak_proto/*.proto

