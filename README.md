## Google Cloud Platform

Repository for building the googleapis packages

### Manual process

This should be automated, but here is the current workflow

- Clone the GitHub repro
  https://github.com/dart-lang/discovery_api_dart_client_generator
- Checkout the experimental branch
- Generate from config file

    $ dart ../discovery_api_dart_client_generator/bin/generate.dart run_config

- Downloaded discovery documents directory 'discovery'
- Generated packages in directory 'generated'

- Diff with previous apis and determine wheter to do minor or major version
  update
- Update config.yaml with new version and generate again
- Run tests

- Upload packages to pub
- Commit downloaded discovery documents and generated packages
