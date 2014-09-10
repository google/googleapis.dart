## Google Cloud Platform

Repository for building the googleapis packages

### Manual process

Here is the current workflow of generating new APIs

- Maybe update 'pubspec.yaml' with new commit hash of the generator.

    $ vim pubspec.yaml

- Run 'pub upgrade' in this directory:

    $ rm -rf .pub
    $ pub upgrade

- Download & Generate APIs using the config.yaml configuration:

    $ pub run discovery_api_client_generator:generate run_config

- Diff with previous apis and determine wheter to do minor or major version
  update

- Update config.yaml with new version and generate again

- Run tests

- Commit downloaded discovery documents and generated packages

- Upload packages to pub
