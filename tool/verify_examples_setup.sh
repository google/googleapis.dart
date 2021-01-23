#!/bin/bash

pushd discoveryapis_generator
dart bin/generate.dart files -i example -o example
dart bin/generate.dart package -i ../_test/rest -o ../_test_package
popd

cp _test/mono_pkg.yaml _test_package

pushd _test_package
pub get
popd
