#!/bin/bash

dart generator/bin/generate.dart run_config generate #--no-delete-existing

cp generated/googleapis/lib/discovery/v1.dart discoveryapis_generator/lib/src/generated_googleapis/discovery/v1.dart

echo 'starting on googleapis'
pushd generated/googleapis || exit
pub get
popd || exit

pwd

echo 'starting on googleapis_beta'
pushd generated/googleapis_beta || exit
pub get
popd || exit
