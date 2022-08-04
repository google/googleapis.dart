// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Digital Asset Links API - v1
///
/// Discovers relationships between online assets such as websites or mobile
/// apps.
///
/// For more information, see
/// <https://developers.google.com/digital-asset-links/>
///
/// Create an instance of [DigitalassetlinksApi] to access these resources:
///
/// - [AssetlinksResource]
/// - [StatementsResource]
library digitalassetlinks.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Discovers relationships between online assets such as websites or mobile
/// apps.
class DigitalassetlinksApi {
  final commons.ApiRequester _requester;

  AssetlinksResource get assetlinks => AssetlinksResource(_requester);
  StatementsResource get statements => StatementsResource(_requester);

  DigitalassetlinksApi(http.Client client,
      {core.String rootUrl = 'https://digitalassetlinks.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AssetlinksResource {
  final commons.ApiRequester _requester;

  AssetlinksResource(commons.ApiRequester client) : _requester = client;

  /// Send a bundle of statement checks in a single RPC to minimize latency and
  /// service load.
  ///
  /// Statements need not be all for the same source and/or target. We recommend
  /// using this method when you need to check more than one statement in a
  /// short period of time.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BulkCheckResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BulkCheckResponse> bulkCheck(
    BulkCheckRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/assetlinks:bulkCheck';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BulkCheckResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Determines whether the specified (directional) relationship exists between
  /// the specified source and target assets.
  ///
  /// The relation describes the intent of the link between the two assets as
  /// claimed by the source asset. An example for such relationships is the
  /// delegation of privileges or permissions. This command is most often used
  /// by infrastructure systems to check preconditions for an action. For
  /// example, a client may want to know if it is OK to send a web URL to a
  /// particular mobile app instead. The client can check for the relevant asset
  /// link from the website to the mobile app to decide if the operation should
  /// be allowed. A note about security: if you specify a secure asset as the
  /// source, such as an HTTPS website or an Android app, the API will ensure
  /// that any statements used to generate the response have been made in a
  /// secure way by the owner of that asset. Conversely, if the source asset is
  /// an insecure HTTP website (that is, the URL starts with `http://` instead
  /// of `https://`), the API cannot verify its statements securely, and it is
  /// not possible to ensure that the website's statements have not been altered
  /// by a third party. For more information, see the
  /// [Digital Asset Links technical design specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md).
  ///
  /// Request parameters:
  ///
  /// [relation] - Query string for the relation. We identify relations with
  /// strings of the format `/`, where `` must be one of a set of pre-defined
  /// purpose categories, and `` is a free-form lowercase alphanumeric string
  /// that describes the specific use case of the statement. Refer to \[our API
  /// documentation\](/digital-asset-links/v1/relation-strings) for the current
  /// list of supported relations. For a query to match an asset link, both the
  /// query's and the asset link's relation strings must match exactly. Example:
  /// A query with relation `delegate_permission/common.handle_all_urls` matches
  /// an asset link with relation `delegate_permission/common.handle_all_urls`.
  ///
  /// [source_androidApp_certificate_sha256Fingerprint] - The uppercase SHA-265
  /// fingerprint of the certificate. From the PEM certificate, it can be
  /// acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256:
  /// SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \
  /// 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in
  /// $CERTFILE -noout -fingerprint -sha256 SHA256
  /// Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \
  /// 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the
  /// contents of this field would be `14:6D:E9:83:C5:73:
  /// 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:
  /// 44:E5`. If these tools are not available to you, you can convert the PEM
  /// certificate into the DER format, compute the SHA-256 hash of that string
  /// and represent the result as a hexstring (that is, uppercase hexadecimal
  /// representations of each octet, separated by colons).
  ///
  /// [source_androidApp_packageName] - Android App assets are naturally
  /// identified by their Java package name. For example, the Google Maps app
  /// uses the package name `com.google.android.apps.maps`. REQUIRED
  ///
  /// [source_web_site] - Web assets are identified by a URL that contains only
  /// the scheme, hostname and port parts. The format is http\[s\]://\[:\]
  /// Hostnames must be fully qualified: they must end in a single period
  /// ("`.`"). Only the schemes "http" and "https" are currently allowed. Port
  /// numbers are given as a decimal number, and they must be omitted if the
  /// standard port numbers are used: 80 for http and 443 for https. We call
  /// this limited URL the "site". All URLs that share the same scheme, hostname
  /// and port are considered to be a part of the site and thus belong to the
  /// web asset. Example: the asset with the site `https://www.google.com`
  /// contains all these URLs: * `https://www.google.com/` *
  /// `https://www.google.com:443/` * `https://www.google.com/foo` *
  /// `https://www.google.com/foo?bar` * `https://www.google.com/foo#bar` *
  /// `https://user@password:www.google.com/` But it does not contain these
  /// URLs: * `http://www.google.com/` (wrong scheme) * `https://google.com/`
  /// (hostname does not match) * `https://www.google.com:444/` (port does not
  /// match) REQUIRED
  ///
  /// [target_androidApp_certificate_sha256Fingerprint] - The uppercase SHA-265
  /// fingerprint of the certificate. From the PEM certificate, it can be
  /// acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256:
  /// SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \
  /// 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in
  /// $CERTFILE -noout -fingerprint -sha256 SHA256
  /// Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \
  /// 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the
  /// contents of this field would be `14:6D:E9:83:C5:73:
  /// 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:
  /// 44:E5`. If these tools are not available to you, you can convert the PEM
  /// certificate into the DER format, compute the SHA-256 hash of that string
  /// and represent the result as a hexstring (that is, uppercase hexadecimal
  /// representations of each octet, separated by colons).
  ///
  /// [target_androidApp_packageName] - Android App assets are naturally
  /// identified by their Java package name. For example, the Google Maps app
  /// uses the package name `com.google.android.apps.maps`. REQUIRED
  ///
  /// [target_web_site] - Web assets are identified by a URL that contains only
  /// the scheme, hostname and port parts. The format is http\[s\]://\[:\]
  /// Hostnames must be fully qualified: they must end in a single period
  /// ("`.`"). Only the schemes "http" and "https" are currently allowed. Port
  /// numbers are given as a decimal number, and they must be omitted if the
  /// standard port numbers are used: 80 for http and 443 for https. We call
  /// this limited URL the "site". All URLs that share the same scheme, hostname
  /// and port are considered to be a part of the site and thus belong to the
  /// web asset. Example: the asset with the site `https://www.google.com`
  /// contains all these URLs: * `https://www.google.com/` *
  /// `https://www.google.com:443/` * `https://www.google.com/foo` *
  /// `https://www.google.com/foo?bar` * `https://www.google.com/foo#bar` *
  /// `https://user@password:www.google.com/` But it does not contain these
  /// URLs: * `http://www.google.com/` (wrong scheme) * `https://google.com/`
  /// (hostname does not match) * `https://www.google.com:444/` (port does not
  /// match) REQUIRED
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckResponse> check({
    core.String? relation,
    core.String? source_androidApp_certificate_sha256Fingerprint,
    core.String? source_androidApp_packageName,
    core.String? source_web_site,
    core.String? target_androidApp_certificate_sha256Fingerprint,
    core.String? target_androidApp_packageName,
    core.String? target_web_site,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (relation != null) 'relation': [relation],
      if (source_androidApp_certificate_sha256Fingerprint != null)
        'source.androidApp.certificate.sha256Fingerprint': [
          source_androidApp_certificate_sha256Fingerprint
        ],
      if (source_androidApp_packageName != null)
        'source.androidApp.packageName': [source_androidApp_packageName],
      if (source_web_site != null) 'source.web.site': [source_web_site],
      if (target_androidApp_certificate_sha256Fingerprint != null)
        'target.androidApp.certificate.sha256Fingerprint': [
          target_androidApp_certificate_sha256Fingerprint
        ],
      if (target_androidApp_packageName != null)
        'target.androidApp.packageName': [target_androidApp_packageName],
      if (target_web_site != null) 'target.web.site': [target_web_site],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/assetlinks:check';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class StatementsResource {
  final commons.ApiRequester _requester;

  StatementsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of all statements from a given source that match the
  /// specified target and statement string.
  ///
  /// The API guarantees that all statements with secure source assets, such as
  /// HTTPS websites or Android apps, have been made in a secure way by the
  /// owner of those assets, as described in the
  /// [Digital Asset Links technical design specification](https://github.com/google/digitalassetlinks/blob/master/well-known/details.md).
  /// Specifically, you should consider that for insecure websites (that is,
  /// where the URL starts with `http://` instead of `https://`), this guarantee
  /// cannot be made. The `List` command is most useful in cases where the API
  /// client wants to know all the ways in which two assets are related, or
  /// enumerate all the relationships from a particular source asset. Example: a
  /// feature that helps users navigate to related items. When a mobile app is
  /// running on a device, the feature would make it easy to navigate to the
  /// corresponding web site or Google+ profile.
  ///
  /// Request parameters:
  ///
  /// [relation] - Use only associations that match the specified relation. See
  /// the \[`Statement`\](#Statement) message for a detailed definition of
  /// relation strings. For a query to match a statement, one of the following
  /// must be true: * both the query's and the statement's relation strings
  /// match exactly, or * the query's relation string is empty or missing.
  /// Example: A query with relation
  /// `delegate_permission/common.handle_all_urls` matches an asset link with
  /// relation `delegate_permission/common.handle_all_urls`.
  ///
  /// [source_androidApp_certificate_sha256Fingerprint] - The uppercase SHA-265
  /// fingerprint of the certificate. From the PEM certificate, it can be
  /// acquired like this: $ keytool -printcert -file $CERTFILE | grep SHA256:
  /// SHA256: 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \
  /// 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in
  /// $CERTFILE -noout -fingerprint -sha256 SHA256
  /// Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \
  /// 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the
  /// contents of this field would be `14:6D:E9:83:C5:73:
  /// 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:
  /// 44:E5`. If these tools are not available to you, you can convert the PEM
  /// certificate into the DER format, compute the SHA-256 hash of that string
  /// and represent the result as a hexstring (that is, uppercase hexadecimal
  /// representations of each octet, separated by colons).
  ///
  /// [source_androidApp_packageName] - Android App assets are naturally
  /// identified by their Java package name. For example, the Google Maps app
  /// uses the package name `com.google.android.apps.maps`. REQUIRED
  ///
  /// [source_web_site] - Web assets are identified by a URL that contains only
  /// the scheme, hostname and port parts. The format is http\[s\]://\[:\]
  /// Hostnames must be fully qualified: they must end in a single period
  /// ("`.`"). Only the schemes "http" and "https" are currently allowed. Port
  /// numbers are given as a decimal number, and they must be omitted if the
  /// standard port numbers are used: 80 for http and 443 for https. We call
  /// this limited URL the "site". All URLs that share the same scheme, hostname
  /// and port are considered to be a part of the site and thus belong to the
  /// web asset. Example: the asset with the site `https://www.google.com`
  /// contains all these URLs: * `https://www.google.com/` *
  /// `https://www.google.com:443/` * `https://www.google.com/foo` *
  /// `https://www.google.com/foo?bar` * `https://www.google.com/foo#bar` *
  /// `https://user@password:www.google.com/` But it does not contain these
  /// URLs: * `http://www.google.com/` (wrong scheme) * `https://google.com/`
  /// (hostname does not match) * `https://www.google.com:444/` (port does not
  /// match) REQUIRED
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListResponse> list({
    core.String? relation,
    core.String? source_androidApp_certificate_sha256Fingerprint,
    core.String? source_androidApp_packageName,
    core.String? source_web_site,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (relation != null) 'relation': [relation],
      if (source_androidApp_certificate_sha256Fingerprint != null)
        'source.androidApp.certificate.sha256Fingerprint': [
          source_androidApp_certificate_sha256Fingerprint
        ],
      if (source_androidApp_packageName != null)
        'source.androidApp.packageName': [source_androidApp_packageName],
      if (source_web_site != null) 'source.web.site': [source_web_site],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/statements:list';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Describes an android app asset.
class AndroidAppAsset {
  /// Because there is no global enforcement of package name uniqueness, we also
  /// require a signing certificate, which in combination with the package name
  /// uniquely identifies an app.
  ///
  /// Some apps' signing keys are rotated, so they may be signed by different
  /// keys over time. We treat these as distinct assets, since we use (package
  /// name, cert) as the unique ID. This should not normally pose any problems
  /// as both versions of the app will make the same or similar statements.
  /// Other assets making statements about the app will have to be updated when
  /// a key is rotated, however. (Note that the syntaxes for publishing and
  /// querying for statements contain syntactic sugar to easily let you specify
  /// apps that are known by multiple certificates.) REQUIRED
  CertificateInfo? certificate;

  /// Android App assets are naturally identified by their Java package name.
  ///
  /// For example, the Google Maps app uses the package name
  /// `com.google.android.apps.maps`. REQUIRED
  core.String? packageName;

  AndroidAppAsset({
    this.certificate,
    this.packageName,
  });

  AndroidAppAsset.fromJson(core.Map json_)
      : this(
          certificate: json_.containsKey('certificate')
              ? CertificateInfo.fromJson(
                  json_['certificate'] as core.Map<core.String, core.dynamic>)
              : null,
          packageName: json_.containsKey('packageName')
              ? json_['packageName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certificate != null) 'certificate': certificate!,
        if (packageName != null) 'packageName': packageName!,
      };
}

/// Uniquely identifies an asset.
///
/// A digital asset is an identifiable and addressable online entity that
/// typically provides some service or content. Examples of assets are websites,
/// Android apps, Twitter feeds, and Plus Pages.
class Asset {
  /// Set if this is an Android App asset.
  AndroidAppAsset? androidApp;

  /// Set if this is a web asset.
  WebAsset? web;

  Asset({
    this.androidApp,
    this.web,
  });

  Asset.fromJson(core.Map json_)
      : this(
          androidApp: json_.containsKey('androidApp')
              ? AndroidAppAsset.fromJson(
                  json_['androidApp'] as core.Map<core.String, core.dynamic>)
              : null,
          web: json_.containsKey('web')
              ? WebAsset.fromJson(
                  json_['web'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidApp != null) 'androidApp': androidApp!,
        if (web != null) 'web': web!,
      };
}

/// Message used to check for the existence of multiple digital asset links
/// within a single RPC.
class BulkCheckRequest {
  /// Same configuration as in Check request, all statements checks will use
  /// same configurations.
  core.bool? allowGoogleInternalDataSources;

  /// If specified, will be used in any given template statement that doesn’t
  /// specify a relation.
  core.String? defaultRelation;

  /// If specified, will be used in any given template statement that doesn’t
  /// specify a source.
  Asset? defaultSource;

  /// If specified, will be used in any given template statement that doesn’t
  /// specify a target.
  Asset? defaultTarget;

  /// Same configuration as in Check request, all statements checks will use
  /// same configurations.
  core.bool? skipCacheLookup;

  /// List of statements to check.
  ///
  /// For each statement, you can omit a field if the corresponding default_*
  /// field below was supplied. Minimum 1 statement; maximum 1,000 statements.
  /// Any additional statements will be ignored.
  core.List<StatementTemplate>? statements;

  BulkCheckRequest({
    this.allowGoogleInternalDataSources,
    this.defaultRelation,
    this.defaultSource,
    this.defaultTarget,
    this.skipCacheLookup,
    this.statements,
  });

  BulkCheckRequest.fromJson(core.Map json_)
      : this(
          allowGoogleInternalDataSources:
              json_.containsKey('allowGoogleInternalDataSources')
                  ? json_['allowGoogleInternalDataSources'] as core.bool
                  : null,
          defaultRelation: json_.containsKey('defaultRelation')
              ? json_['defaultRelation'] as core.String
              : null,
          defaultSource: json_.containsKey('defaultSource')
              ? Asset.fromJson(
                  json_['defaultSource'] as core.Map<core.String, core.dynamic>)
              : null,
          defaultTarget: json_.containsKey('defaultTarget')
              ? Asset.fromJson(
                  json_['defaultTarget'] as core.Map<core.String, core.dynamic>)
              : null,
          skipCacheLookup: json_.containsKey('skipCacheLookup')
              ? json_['skipCacheLookup'] as core.bool
              : null,
          statements: json_.containsKey('statements')
              ? (json_['statements'] as core.List)
                  .map((value) => StatementTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowGoogleInternalDataSources != null)
          'allowGoogleInternalDataSources': allowGoogleInternalDataSources!,
        if (defaultRelation != null) 'defaultRelation': defaultRelation!,
        if (defaultSource != null) 'defaultSource': defaultSource!,
        if (defaultTarget != null) 'defaultTarget': defaultTarget!,
        if (skipCacheLookup != null) 'skipCacheLookup': skipCacheLookup!,
        if (statements != null) 'statements': statements!,
      };
}

/// Response for BulkCheck call.
///
/// Results are sent in a list in the same order in which they were sent.
/// Individual check errors are described in the appropriate check_results
/// entry. If the entire call fails, the response will include a bulk_error_code
/// field describing the error.
class BulkCheckResponse {
  /// Error code for the entire request.
  ///
  /// Present only if the entire request failed. Individual check errors will
  /// not trigger the presence of this field.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED"
  /// - "ERROR_CODE_INVALID_QUERY" : Unable to parse query.
  /// - "ERROR_CODE_FETCH_ERROR" : Unable to fetch the asset links data.
  /// - "ERROR_CODE_FAILED_SSL_VALIDATION" : Invalid HTTPS certificate .
  /// - "ERROR_CODE_REDIRECT" : HTTP redirects (e.g, 301) are not allowed.
  /// - "ERROR_CODE_TOO_LARGE" : Asset links data exceeds maximum size.
  /// - "ERROR_CODE_MALFORMED_HTTP_RESPONSE" : Can't parse HTTP response.
  /// - "ERROR_CODE_WRONG_CONTENT_TYPE" : HTTP Content-type should be
  /// application/json.
  /// - "ERROR_CODE_MALFORMED_CONTENT" : JSON content is malformed.
  /// - "ERROR_CODE_SECURE_ASSET_INCLUDES_INSECURE" : A secure asset includes an
  /// insecure asset (security downgrade).
  /// - "ERROR_CODE_FETCH_BUDGET_EXHAUSTED" : Too many includes (maybe a loop).
  core.String? bulkErrorCode;

  /// List of results for each check request.
  ///
  /// Results are returned in the same order in which they were sent in the
  /// request.
  core.List<CheckResponse>? checkResults;

  BulkCheckResponse({
    this.bulkErrorCode,
    this.checkResults,
  });

  BulkCheckResponse.fromJson(core.Map json_)
      : this(
          bulkErrorCode: json_.containsKey('bulkErrorCode')
              ? json_['bulkErrorCode'] as core.String
              : null,
          checkResults: json_.containsKey('checkResults')
              ? (json_['checkResults'] as core.List)
                  .map((value) => CheckResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bulkErrorCode != null) 'bulkErrorCode': bulkErrorCode!,
        if (checkResults != null) 'checkResults': checkResults!,
      };
}

/// Describes an X509 certificate.
class CertificateInfo {
  /// The uppercase SHA-265 fingerprint of the certificate.
  ///
  /// From the PEM certificate, it can be acquired like this: $ keytool
  /// -printcert -file $CERTFILE | grep SHA256: SHA256:
  /// 14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83: \
  /// 42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 or like this: $ openssl x509 -in
  /// $CERTFILE -noout -fingerprint -sha256 SHA256
  /// Fingerprint=14:6D:E9:83:C5:73:06:50:D8:EE:B9:95:2F:34:FC:64: \
  /// 16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:44:E5 In this example, the
  /// contents of this field would be `14:6D:E9:83:C5:73:
  /// 06:50:D8:EE:B9:95:2F:34:FC:64:16:A0:83:42:E6:1D:BE:A8:8A:04:96:B2:3F:CF:
  /// 44:E5`. If these tools are not available to you, you can convert the PEM
  /// certificate into the DER format, compute the SHA-256 hash of that string
  /// and represent the result as a hexstring (that is, uppercase hexadecimal
  /// representations of each octet, separated by colons).
  core.String? sha256Fingerprint;

  CertificateInfo({
    this.sha256Fingerprint,
  });

  CertificateInfo.fromJson(core.Map json_)
      : this(
          sha256Fingerprint: json_.containsKey('sha256Fingerprint')
              ? json_['sha256Fingerprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sha256Fingerprint != null) 'sha256Fingerprint': sha256Fingerprint!,
      };
}

/// Response message for the CheckAssetLinks call.
class CheckResponse {
  /// Human-readable message containing information intended to help end users
  /// understand, reproduce and debug the result.
  ///
  /// The message will be in English and we are currently not planning to offer
  /// any translations. Please note that no guarantees are made about the
  /// contents or format of this string. Any aspect of it may be subject to
  /// change without notice. You should not attempt to programmatically parse
  /// this data. For programmatic access, use the error_code field below.
  core.String? debugString;

  /// Error codes that describe the result of the Check operation.
  core.List<core.String>? errorCode;

  /// Set to true if the assets specified in the request are linked by the
  /// relation specified in the request.
  core.bool? linked;

  /// From serving time, how much longer the response should be considered valid
  /// barring further updates.
  ///
  /// REQUIRED
  core.String? maxAge;

  CheckResponse({
    this.debugString,
    this.errorCode,
    this.linked,
    this.maxAge,
  });

  CheckResponse.fromJson(core.Map json_)
      : this(
          debugString: json_.containsKey('debugString')
              ? json_['debugString'] as core.String
              : null,
          errorCode: json_.containsKey('errorCode')
              ? (json_['errorCode'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          linked:
              json_.containsKey('linked') ? json_['linked'] as core.bool : null,
          maxAge: json_.containsKey('maxAge')
              ? json_['maxAge'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugString != null) 'debugString': debugString!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (linked != null) 'linked': linked!,
        if (maxAge != null) 'maxAge': maxAge!,
      };
}

/// Response message for the List call.
class ListResponse {
  /// Human-readable message containing information intended to help end users
  /// understand, reproduce and debug the result.
  ///
  /// The message will be in English and we are currently not planning to offer
  /// any translations. Please note that no guarantees are made about the
  /// contents or format of this string. Any aspect of it may be subject to
  /// change without notice. You should not attempt to programmatically parse
  /// this data. For programmatic access, use the error_code field below.
  core.String? debugString;

  /// Error codes that describe the result of the List operation.
  core.List<core.String>? errorCode;

  /// From serving time, how much longer the response should be considered valid
  /// barring further updates.
  ///
  /// REQUIRED
  core.String? maxAge;

  /// A list of all the matching statements that have been found.
  core.List<Statement>? statements;

  ListResponse({
    this.debugString,
    this.errorCode,
    this.maxAge,
    this.statements,
  });

  ListResponse.fromJson(core.Map json_)
      : this(
          debugString: json_.containsKey('debugString')
              ? json_['debugString'] as core.String
              : null,
          errorCode: json_.containsKey('errorCode')
              ? (json_['errorCode'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maxAge: json_.containsKey('maxAge')
              ? json_['maxAge'] as core.String
              : null,
          statements: json_.containsKey('statements')
              ? (json_['statements'] as core.List)
                  .map((value) => Statement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugString != null) 'debugString': debugString!,
        if (errorCode != null) 'errorCode': errorCode!,
        if (maxAge != null) 'maxAge': maxAge!,
        if (statements != null) 'statements': statements!,
      };
}

/// Describes a reliable statement that has been made about the relationship
/// between a source asset and a target asset.
///
/// Statements are always made by the source asset, either directly or by
/// delegating to a statement list that is stored elsewhere. For more detailed
/// definitions of statements and assets, please refer to our \[API
/// documentation landing page\](/digital-asset-links/v1/getting-started).
class Statement {
  /// The relation identifies the use of the statement as intended by the source
  /// asset's owner (that is, the person or entity who issued the statement).
  ///
  /// Every complete statement has a relation. We identify relations with
  /// strings of the format `/`, where `` must be one of a set of pre-defined
  /// purpose categories, and `` is a free-form lowercase alphanumeric string
  /// that describes the specific use case of the statement. Refer to \[our API
  /// documentation\](/digital-asset-links/v1/relation-strings) for the current
  /// list of supported relations. Example:
  /// `delegate_permission/common.handle_all_urls` REQUIRED
  core.String? relation;

  /// Every statement has a source asset.
  ///
  /// REQUIRED
  Asset? source;

  /// Every statement has a target asset.
  ///
  /// REQUIRED
  Asset? target;

  Statement({
    this.relation,
    this.source,
    this.target,
  });

  Statement.fromJson(core.Map json_)
      : this(
          relation: json_.containsKey('relation')
              ? json_['relation'] as core.String
              : null,
          source: json_.containsKey('source')
              ? Asset.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          target: json_.containsKey('target')
              ? Asset.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (relation != null) 'relation': relation!,
        if (source != null) 'source': source!,
        if (target != null) 'target': target!,
      };
}

/// A single statement to check in a bulk call using BulkCheck.
///
/// See CheckRequest for details about each field.
class StatementTemplate {
  /// The relationship being asserted between the source and target.
  ///
  /// If omitted, you must specify a BulkCheckRequest.default_relation value to
  /// use here.
  core.String? relation;

  /// The source asset that is asserting the statement.
  ///
  /// If omitted, you must specify a BulkCheckRequest.default_source value to
  /// use here.
  Asset? source;

  /// The target that the source is declaring the relationship with.
  ///
  /// If omitted, you must specify a BulkCheckRequest.default_target to use
  /// here.
  Asset? target;

  StatementTemplate({
    this.relation,
    this.source,
    this.target,
  });

  StatementTemplate.fromJson(core.Map json_)
      : this(
          relation: json_.containsKey('relation')
              ? json_['relation'] as core.String
              : null,
          source: json_.containsKey('source')
              ? Asset.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          target: json_.containsKey('target')
              ? Asset.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (relation != null) 'relation': relation!,
        if (source != null) 'source': source!,
        if (target != null) 'target': target!,
      };
}

/// Describes a web asset.
class WebAsset {
  /// Web assets are identified by a URL that contains only the scheme, hostname
  /// and port parts.
  ///
  /// The format is http\[s\]://\[:\] Hostnames must be fully qualified: they
  /// must end in a single period ("`.`"). Only the schemes "http" and "https"
  /// are currently allowed. Port numbers are given as a decimal number, and
  /// they must be omitted if the standard port numbers are used: 80 for http
  /// and 443 for https. We call this limited URL the "site". All URLs that
  /// share the same scheme, hostname and port are considered to be a part of
  /// the site and thus belong to the web asset. Example: the asset with the
  /// site `https://www.google.com` contains all these URLs: *
  /// `https://www.google.com/` * `https://www.google.com:443/` *
  /// `https://www.google.com/foo` * `https://www.google.com/foo?bar` *
  /// `https://www.google.com/foo#bar` * `https://user@password:www.google.com/`
  /// But it does not contain these URLs: * `http://www.google.com/` (wrong
  /// scheme) * `https://google.com/` (hostname does not match) *
  /// `https://www.google.com:444/` (port does not match) REQUIRED
  core.String? site;

  WebAsset({
    this.site,
  });

  WebAsset.fromJson(core.Map json_)
      : this(
          site: json_.containsKey('site') ? json_['site'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (site != null) 'site': site!,
      };
}
