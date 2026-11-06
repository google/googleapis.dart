#!/bin/bash
set -e

dart --enable-asserts generator/bin/generate.dart run_config generate

#cp generated/googleapis/lib/discovery/v1.dart discoveryapis_generator/lib/src/generated_googleapis/discovery/v1.dart

dart pub get
