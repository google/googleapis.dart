#!/bin/bash
set -e

git submodule update --init --depth 1 --single-branch --remote
dart --enable-asserts generator/bin/generate.dart run_config download
