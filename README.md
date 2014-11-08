Repository for building the [googleapis] and [googleapis_beta] packages.

**Workflow:**

- Update `pubspec.yaml` with new commit hash from the generator.

- Run `pub upgrade` in this directory:

    $ rm -rf .pub
    $ pub upgrade

- Download & generate APIs using the `config.yaml` configuration:

    $ pub run discovery_api_client_generator:generate run_config

- Diff with previous APIs and determine whether to do minor or major version
  update.

- Update `config.yaml` with new version and generate again.

- Run tests.

- Commit downloaded discovery documents and generated packages.

- Upload packages to pub.

[googleapis]: https://pub.dartlang.org/packages/googleapis
[googleapis_beta]: https://pub.dartlang.org/packages/googleapis_beta
