Repository for building the [googleapis] and [googleapis_beta] packages.

**Workflow:**

- Run `pub upgrade` in this directory:

    $ rm -rf .pub
    $ pub upgrade

- Download & generate APIs using the `config.yaml` configuration:

    $ dart bin/generate.dart run_config download

- Possible reset some of the discovery documents downloaded (e.g. drive,
  prediction)

- Generate APIs

    $ dart bin/generate.dart run_config generate

- Diff with previous APIs and determine whether to do minor or major version
  update. Update CHANGELOG.md files in resources/.

- Update `config.yaml` with new version and generate again.

    $ dart bin/generate.dart run_config generate

- Run tests:

    $ pub global activate test_runner
    $ pushd generated/googleapis
    $ pub get
    $ pub global run test_runner
    $ cd ../googleapis_beta
    $ pub get
    $ pub global run test_runner
    $ popd

- Commit downloaded discovery documents and generated packages.

- Upload packages to pub.

[googleapis]: https://pub.dartlang.org/packages/googleapis
[googleapis_beta]: https://pub.dartlang.org/packages/googleapis_beta
