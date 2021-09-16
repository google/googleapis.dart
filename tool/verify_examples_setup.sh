#!/bin/bash

rm _test/*.dart

pushd discoveryapis_generator
dart test test/client_generator_test.dart
dart bin/generate.dart package --package-name test_package -i ../_test/rest -o ../_test_package
popd

cp resources/test_pkg_mono_pkg.yaml _test_package/mono_pkg.yaml

pushd _test_package
dart pub get
popd
