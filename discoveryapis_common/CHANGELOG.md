## 0.3.0-dev

- Migrate to null safety.

## 0.2.0

 - Changed `ApiRequestError` (and its subclass `DetailedApiRequestError`) from
   extending `Error` to implementing `Exception`.

The change from extending `Error` to implementing `Exception` should not affect
`try {...} on DetailedApiRequestError {` blocks. But anyone catching `Error`,
`Exception` or testing with `is Error` might be affected.

## 0.1.9

 - Added a `x-goog-api-client` header for client library identification.

## 0.1.8+2

- Filter out headers we're not allowed to send when operating in a browser.

## 0.1.8+1

- Fix `content-length` bug introduced in `0.1.8`.
- Support `package:http` `>=0.11.1 <0.13.0`.

## 0.1.8

- Support Dart 2.
- Allow response errors with non-integer error codes.

## 0.1.6+1

- Require Dart 2.0.0-dev.64

## 0.1.6

- Fix Dart 2 runtime issue.

## 0.1.5

- Updates to support Dart 2.0 core library changes (wave
  2.2). See [issue 31847][sdk#31847] for details.

  [sdk#31847]: https://github.com/dart-lang/sdk/issues/31847

## 0.1.4

- Make package strong-mode clean.

## 0.1.3+1

- Removed `pkg/crypto` dependency and upgrade Dart dependency to >=1.13.

## 0.1.3

- Fixed two strong mode issues

## 0.1.2

- Make Discovery API client throw new detailed errors.

## 0.1.1

- Expose the Escaper class

## 0.1.0

- Initial version
