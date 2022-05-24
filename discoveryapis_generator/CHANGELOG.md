## 1.1.0-dev

- Require Dart 2.16 or later.
- Add positional parameters to all schema types.
- Added `Function` to the set of reserved names.

## 1.0.0

- Generates null-safe code.
  *Note: the code in this package is not null-safe (yet) due to dependencies.*
- Require Dart `2.12` or greater.
- Optional, named parameters are now sorted by name.
- `generate` command: added `[--no]--delete-existing` flag. 

## v0.9.15
 - Add support for scopes defined in
   [openid-connect 1.0](https://openid.net/specs/openid-connect-core-1_0.html).

## v0.9.14
 - Bumped `_discoveryapis_commons` to allow `0.2.x`.

## v0.9.12

- Fixed suggestions from pana in the generated code.

## v0.9.11

- Support methods that have uploadMedia, but are not resumable.
- Fixed test generator adding `dataWrapper` support.

## v0.9.10

- Widen constraint on `package:http` to allow version `0.12.0`

## v0.9.9

- Generate packages with pubspecs that accept sdk 2.0.0 and above.

## v0.9.8

- Make the generator Dart 2.0 clean.

## v0.9.7

- Support data-wrapping of response bodies. This is a deprecated feature, but it is being used by
  the Translate v2 API.
- Ignore unnecessary_cast lint in generated files.
- Add .toDouble() conversion where necessary.

## v0.9.6

- More Dart 2 fixes. Add .map() and .cast() to Lists and Maps to get the types
  right at runtime.

## v0.9.5

- More type annotations for Dart 2.

## v0.9.4

- Use type arguments for `Map`, since dynamic is no longer bottom.
- Avoid unnecessary imports of `dart:convert`.

## v0.9.3

- Minor cleanups.

## v0.9.2

- Add support for global request parameters, currently whitelisted to only allow
  `"fields"`.

## v0.9.1+2

- Widen dependency constraint on `package:args`.

## v0.9.1+1

- Use `< 2.0.0` sdk constraint in generated `pubspec.yaml` files (following the
  [new guideline](https://news.dartlang.org/2017/09/dart-20-pre-releases-what-they-mean-to.html)).

## v0.9.1

- Avoid unused imports in generated tests.
- Use new-style /// comments for generated code.
- Use `package:dart_style` for formatting the generated code.
- Use `< 2.0.0-dev.infinity` sdk constraint in generated `pubspec.yaml` files.

## v0.9.0

- Make generated code strong mode clean.
- Make generated code use `package:test` instead of `package:unittest`.

## v0.8.0+2

- Make `package:discoveryapis_generator` strong mode clean.

## v0.8.0+1

- Require at least Dart `1.14` for generated libraries. Code requires
  `dart:convert` `BASE64` which was added to that release.

## v0.8.0

- Remove crypto dependency from generated libraries and upgrade sdk
  dependency to dart 1.13

## v0.7.2

- Update the code generator to only generate imports for libraries that are used
  (this avoids having analysis warnings for unused imports in the generate
  code).
- Add a command-line option to not generate library prefixes for the `dart:core`
  and `dart:async` libraries (`--no-core-prefixes`).

## v0.7.1+1

- Make findPackageRoot handle 'file:' paths.

## v0.7.1

- Fix bug in windows path handling.

## v0.7.0

- Add support for generating API files inside an existing package instead of
  generating an entirely new package.
- Changed the generators command names to 'package' and 'files' respectively
  to make it clear what is being generated.
- Added support for generating a client stub API using the same message classes
  as used on the server.

## v0.6.1

- Updated README

## v0.6.0

- Change generator to use the discoveryapis_commons package for generated code
- Remove googleapis commands and split out separate googleapis library

## v0.5.0

- Merged new generator implementation from experimental branch to master

## 0.4.5 2014-05-16 (SDK 1.4.0-dev.6.7 r36210)

- Set `uploadType` as `multipart` by default
- Rev up bot_io

## 0.4.4 2014-03-22 (SDK 1.3.0-dev.5.2 r34229)

- Added Geo JSON support
- Added support for schema array object
- Added support for schema any object
- Updated generated dependencies
- Cleaned up hop runner

## v0.4.3

## v0.4.2

## v0.4.1

## v0.4.0

## v0.3.0

## v0.2.8

## v0.2.6

## v0.2.5
