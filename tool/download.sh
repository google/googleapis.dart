#!/bin/bash

git submodule update --recursive --remote
dart --enable-asserts generator/bin/generate.dart run_config download
