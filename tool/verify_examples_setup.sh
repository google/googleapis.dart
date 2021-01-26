#!/bin/bash

rm _test/*.dart

pushd discoveryapis_generator
pub run test test/client_generator_test.dart
dart bin/generate.dart files -i example -o example
dart bin/generate.dart package --package-name test_package -i ../_test/rest -o ../_test_package
popd

cp _test/mono_pkg.yaml _test_package

pushd _test_package
pub get
popd
