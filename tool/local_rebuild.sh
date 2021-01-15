#!/bin/bash

dart bin/generate.dart run_config generate

echo 'starting on googleapis'
pushd generated/googleapis || exit
pub get
popd || exit

pwd

echo 'starting on googleapis_beta'
pushd generated/googleapis_beta || exit
pub get
popd || exit
