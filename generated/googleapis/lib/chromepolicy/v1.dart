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

/// Chrome Policy API - v1
///
/// The Chrome Policy API is a suite of services that allows Chrome
/// administrators to control the policies applied to their managed Chrome OS
/// devices and Chrome browsers.
///
/// For more information, see <http://developers.google.com/chrome/policy>
///
/// Create an instance of [ChromePolicyApi] to access these resources:
///
/// - [CustomersResource]
///   - [CustomersPoliciesResource]
///     - [CustomersPoliciesOrgunitsResource]
///   - [CustomersPolicySchemasResource]
/// - [MediaResource]
library chromepolicy.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// The Chrome Policy API is a suite of services that allows Chrome
/// administrators to control the policies applied to their managed Chrome OS
/// devices and Chrome browsers.
class ChromePolicyApi {
  /// See, edit, create or delete policies applied to Chrome OS and Chrome
  /// Browsers managed within your organization
  static const chromeManagementPolicyScope =
      'https://www.googleapis.com/auth/chrome.management.policy';

  /// See policies applied to Chrome OS and Chrome Browsers managed within your
  /// organization
  static const chromeManagementPolicyReadonlyScope =
      'https://www.googleapis.com/auth/chrome.management.policy.readonly';

  final commons.ApiRequester _requester;

  CustomersResource get customers => CustomersResource(_requester);
  MediaResource get media => MediaResource(_requester);

  ChromePolicyApi(http.Client client,
      {core.String rootUrl = 'https://chromepolicy.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CustomersResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesResource get policies =>
      CustomersPoliciesResource(_requester);
  CustomersPolicySchemasResource get policySchemas =>
      CustomersPolicySchemasResource(_requester);

  CustomersResource(commons.ApiRequester client) : _requester = client;
}

class CustomersPoliciesResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesOrgunitsResource get orgunits =>
      CustomersPoliciesOrgunitsResource(_requester);

  CustomersPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the resolved policy values for a list of policies that match a search
  /// query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the G Suite account or literal "my_customer" for the
  /// customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyV1ResolveResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyV1ResolveResponse> resolve(
    GoogleChromePolicyV1ResolveRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$customer') + '/policies:resolve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleChromePolicyV1ResolveResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersPoliciesOrgunitsResource {
  final commons.ApiRequester _requester;

  CustomersPoliciesOrgunitsResource(commons.ApiRequester client)
      : _requester = client;

  /// Modify multiple policy values that are applied to a specific org unit so
  /// that they now inherit the value from a parent (if applicable).
  ///
  /// All targets must have the same target format. That is to say that they
  /// must point to the same target resource and must have the same keys
  /// specified in `additionalTargetKeyNames`, though the values for those keys
  /// may be different. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the G Suite account or literal "my_customer" for the
  /// customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> batchInherit(
    GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/orgunits:batchInherit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Modify multiple policy values that are applied to a specific org unit.
  ///
  /// All targets must have the same target format. That is to say that they
  /// must point to the same target resource and must have the same keys
  /// specified in `additionalTargetKeyNames`, though the values for those keys
  /// may be different. On failure the request will return the error details as
  /// part of the google.rpc.Status.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - ID of the G Suite account or literal "my_customer" for the
  /// customer associated to the request.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> batchModify(
    GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$customer') +
        '/policies/orgunits:batchModify';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomersPolicySchemasResource {
  final commons.ApiRequester _requester;

  CustomersPolicySchemasResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a specific policy schema for a customer by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The policy schema resource name to query.
  /// Value must have pattern `^customers/\[^/\]+/policySchemas/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyV1PolicySchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyV1PolicySchema> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleChromePolicyV1PolicySchema.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of policy schemas that match a specified filter value for a
  /// given customer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The customer for which the listing request will
  /// apply.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [filter] - The schema filter used to find a particular schema based on
  /// fields like its resource name, description and `additionalTargetKeyNames`.
  ///
  /// [pageSize] - The maximum number of policy schemas to return.
  ///
  /// [pageToken] - The page token used to retrieve a specific page of the
  /// listing request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleChromePolicyV1ListPolicySchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyV1ListPolicySchemasResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/policySchemas';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleChromePolicyV1ListPolicySchemasResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Creates an enterprise file from the content provided by user.
  ///
  /// Returns a public download url for end user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The customer for which the file upload will apply.
  /// Value must have pattern `^customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [GoogleChromePolicyV1UploadPolicyFileResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleChromePolicyV1UploadPolicyFileResponse> upload(
    GoogleChromePolicyV1UploadPolicyFileRequest request,
    core.String customer, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'v1/' +
          core.Uri.encodeFull('$customer') +
          '/policies/files:uploadPolicyFile';
    } else {
      _url = '/upload/v1/' +
          core.Uri.encodeFull('$customer') +
          '/policies/files:uploadPolicyFile';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return GoogleChromePolicyV1UploadPolicyFileResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Additional key names that will be used to identify the target of the policy
/// value.
class GoogleChromePolicyV1AdditionalTargetKeyName {
  /// Key name.
  core.String? key;

  /// Key description.
  core.String? keyDescription;

  GoogleChromePolicyV1AdditionalTargetKeyName({
    this.key,
    this.keyDescription,
  });

  GoogleChromePolicyV1AdditionalTargetKeyName.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          keyDescription: _json.containsKey('keyDescription')
              ? _json['keyDescription'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (keyDescription != null) 'keyDescription': keyDescription!,
      };
}

/// Request message for specifying that multiple policy values inherit their
/// value from their parents.
class GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest {
  /// List of policies that have to inherit their values as defined by the
  /// `requests`.
  ///
  /// All requests in the list must follow these restrictions: 1. All schemas in
  /// the list must have the same root namespace. 2. All
  /// `policyTargetKey.targetResource` values must point to an org unit
  /// resource. 3. All `policyTargetKey` values must have the same key names in
  /// the ` additionalTargetKeys`. This also means if one of the targets has an
  /// empty `additionalTargetKeys` map, all of the targets must have an empty
  /// `additionalTargetKeys` map. 4. No two modification requests can reference
  /// the same `policySchema` + ` policyTargetKey` pair.
  core.List<GoogleChromePolicyV1InheritOrgUnitPolicyRequest>? requests;

  GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest({
    this.requests,
  });

  GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest.fromJson(
      core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) =>
                      GoogleChromePolicyV1InheritOrgUnitPolicyRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Request message for modifying multiple policy values for a specific target.
class GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest {
  /// List of policies to modify as defined by the `requests`.
  ///
  /// All requests in the list must follow these restrictions: 1. All schemas in
  /// the list must have the same root namespace. 2. All
  /// `policyTargetKey.targetResource` values must point to an org unit
  /// resource. 3. All `policyTargetKey` values must have the same key names in
  /// the ` additionalTargetKeys`. This also means if one of the targets has an
  /// empty `additionalTargetKeys` map, all of the targets must have an empty
  /// `additionalTargetKeys` map. 4. No two modification requests can reference
  /// the same `policySchema` + ` policyTargetKey` pair.
  core.List<GoogleChromePolicyV1ModifyOrgUnitPolicyRequest>? requests;

  GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest({
    this.requests,
  });

  GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest.fromJson(core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) =>
                      GoogleChromePolicyV1ModifyOrgUnitPolicyRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Request parameters for inheriting policy value of a specific org unit target
/// from the policy value of its parent org unit.
class GoogleChromePolicyV1InheritOrgUnitPolicyRequest {
  /// The fully qualified name of the policy schema that is being inherited.
  core.String? policySchema;

  /// The key of the target for which we want to modify a policy.
  ///
  /// The target resource must point to an Org Unit.
  ///
  /// Required.
  GoogleChromePolicyV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyV1InheritOrgUnitPolicyRequest({
    this.policySchema,
    this.policyTargetKey,
  });

  GoogleChromePolicyV1InheritOrgUnitPolicyRequest.fromJson(core.Map _json)
      : this(
          policySchema: _json.containsKey('policySchema')
              ? _json['policySchema'] as core.String
              : null,
          policyTargetKey: _json.containsKey('policyTargetKey')
              ? GoogleChromePolicyV1PolicyTargetKey.fromJson(
                  _json['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policySchema != null) 'policySchema': policySchema!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Response message for listing policy schemas that match a filter.
class GoogleChromePolicyV1ListPolicySchemasResponse {
  /// The page token used to get the next page of policy schemas.
  core.String? nextPageToken;

  /// The list of policy schemas that match the query.
  core.List<GoogleChromePolicyV1PolicySchema>? policySchemas;

  GoogleChromePolicyV1ListPolicySchemasResponse({
    this.nextPageToken,
    this.policySchemas,
  });

  GoogleChromePolicyV1ListPolicySchemasResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          policySchemas: _json.containsKey('policySchemas')
              ? (_json['policySchemas'] as core.List)
                  .map((value) => GoogleChromePolicyV1PolicySchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policySchemas != null) 'policySchemas': policySchemas!,
      };
}

/// Request parameters for modifying a policy value for a specific org unit
/// target.
class GoogleChromePolicyV1ModifyOrgUnitPolicyRequest {
  /// The key of the target for which we want to modify a policy.
  ///
  /// The target resource must point to an Org Unit.
  ///
  /// Required.
  GoogleChromePolicyV1PolicyTargetKey? policyTargetKey;

  /// The new value for the policy.
  GoogleChromePolicyV1PolicyValue? policyValue;

  /// Policy fields to update.
  ///
  /// Only fields in this mask will be updated; other fields in `policy_value`
  /// will be ignored (even if they have values). If a field is in this list it
  /// must have a value in 'policy_value'.
  ///
  /// Required.
  core.String? updateMask;

  GoogleChromePolicyV1ModifyOrgUnitPolicyRequest({
    this.policyTargetKey,
    this.policyValue,
    this.updateMask,
  });

  GoogleChromePolicyV1ModifyOrgUnitPolicyRequest.fromJson(core.Map _json)
      : this(
          policyTargetKey: _json.containsKey('policyTargetKey')
              ? GoogleChromePolicyV1PolicyTargetKey.fromJson(
                  _json['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
          policyValue: _json.containsKey('policyValue')
              ? GoogleChromePolicyV1PolicyValue.fromJson(
                  _json['policyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
        if (policyValue != null) 'policyValue': policyValue!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Resource representing a policy schema.
///
/// Next ID: 11
class GoogleChromePolicyV1PolicySchema {
  /// Specific access restrictions related to this policy.
  ///
  /// Output only.
  core.List<core.String>? accessRestrictions;

  /// Additional key names that will be used to identify the target of the
  /// policy value.
  ///
  /// When specifying a `policyTargetKey`, each of the additional keys specified
  /// here will have to be included in the `additionalTargetKeys` map.
  ///
  /// Output only.
  core.List<GoogleChromePolicyV1AdditionalTargetKeyName>?
      additionalTargetKeyNames;

  /// Schema definition using proto descriptor.
  Proto2FileDescriptorProto? definition;

  /// Detailed description of each field that is part of the schema.
  ///
  /// Output only.
  core.List<GoogleChromePolicyV1PolicySchemaFieldDescription>?
      fieldDescriptions;

  /// Format: name=customers/{customer}/policySchemas/{schema_namespace}
  core.String? name;

  /// Special notice messages related to setting certain values in certain
  /// fields in the schema.
  ///
  /// Output only.
  core.List<GoogleChromePolicyV1PolicySchemaNoticeDescription>? notices;

  /// Description about the policy schema for user consumption.
  ///
  /// Output only.
  core.String? policyDescription;

  /// The fully qualified name of the policy schema.
  ///
  /// This value is used to fill the field `policy_schema` in PolicyValue when
  /// calling BatchInheritOrgUnitPolicies or BatchModifyOrgUnitPolicies
  ///
  /// Output only.
  core.String? schemaName;

  /// URI to related support article for this schema.
  ///
  /// Output only.
  core.String? supportUri;

  /// Information about applicable target resources for the policy.
  ///
  /// Output only.
  core.List<core.String>? validTargetResources;

  GoogleChromePolicyV1PolicySchema({
    this.accessRestrictions,
    this.additionalTargetKeyNames,
    this.definition,
    this.fieldDescriptions,
    this.name,
    this.notices,
    this.policyDescription,
    this.schemaName,
    this.supportUri,
    this.validTargetResources,
  });

  GoogleChromePolicyV1PolicySchema.fromJson(core.Map _json)
      : this(
          accessRestrictions: _json.containsKey('accessRestrictions')
              ? (_json['accessRestrictions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          additionalTargetKeyNames:
              _json.containsKey('additionalTargetKeyNames')
                  ? (_json['additionalTargetKeyNames'] as core.List)
                      .map((value) =>
                          GoogleChromePolicyV1AdditionalTargetKeyName.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          definition: _json.containsKey('definition')
              ? Proto2FileDescriptorProto.fromJson(
                  _json['definition'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldDescriptions: _json.containsKey('fieldDescriptions')
              ? (_json['fieldDescriptions'] as core.List)
                  .map((value) =>
                      GoogleChromePolicyV1PolicySchemaFieldDescription.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notices: _json.containsKey('notices')
              ? (_json['notices'] as core.List)
                  .map((value) =>
                      GoogleChromePolicyV1PolicySchemaNoticeDescription
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          policyDescription: _json.containsKey('policyDescription')
              ? _json['policyDescription'] as core.String
              : null,
          schemaName: _json.containsKey('schemaName')
              ? _json['schemaName'] as core.String
              : null,
          supportUri: _json.containsKey('supportUri')
              ? _json['supportUri'] as core.String
              : null,
          validTargetResources: _json.containsKey('validTargetResources')
              ? (_json['validTargetResources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessRestrictions != null)
          'accessRestrictions': accessRestrictions!,
        if (additionalTargetKeyNames != null)
          'additionalTargetKeyNames': additionalTargetKeyNames!,
        if (definition != null) 'definition': definition!,
        if (fieldDescriptions != null) 'fieldDescriptions': fieldDescriptions!,
        if (name != null) 'name': name!,
        if (notices != null) 'notices': notices!,
        if (policyDescription != null) 'policyDescription': policyDescription!,
        if (schemaName != null) 'schemaName': schemaName!,
        if (supportUri != null) 'supportUri': supportUri!,
        if (validTargetResources != null)
          'validTargetResources': validTargetResources!,
      };
}

/// The field and the value it must have for another field to be allowed to be
/// set.
class GoogleChromePolicyV1PolicySchemaFieldDependencies {
  /// The source field which this field depends on.
  core.String? sourceField;

  /// The value which the source field must have for this field to be allowed to
  /// be set.
  core.String? sourceFieldValue;

  GoogleChromePolicyV1PolicySchemaFieldDependencies({
    this.sourceField,
    this.sourceFieldValue,
  });

  GoogleChromePolicyV1PolicySchemaFieldDependencies.fromJson(core.Map _json)
      : this(
          sourceField: _json.containsKey('sourceField')
              ? _json['sourceField'] as core.String
              : null,
          sourceFieldValue: _json.containsKey('sourceFieldValue')
              ? _json['sourceFieldValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceField != null) 'sourceField': sourceField!,
        if (sourceFieldValue != null) 'sourceFieldValue': sourceFieldValue!,
      };
}

/// Provides detailed information for a particular field that is part of a
/// PolicySchema.
class GoogleChromePolicyV1PolicySchemaFieldDescription {
  /// The description for the field.
  ///
  /// Output only.
  core.String? description;

  /// The name of the field for associated with this description.
  ///
  /// Output only.
  core.String? field;

  /// Provides a list of fields and the values they must have for this field to
  /// be allowed to be set.
  ///
  /// Output only.
  core.List<GoogleChromePolicyV1PolicySchemaFieldDependencies>?
      fieldDependencies;

  /// Any input constraints associated on the values for the field.
  ///
  /// Output only.
  core.String? inputConstraint;

  /// If the field has a set of known values, this field will provide a
  /// description for these values.
  ///
  /// Output only.
  core.List<GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription>?
      knownValueDescriptions;

  /// Provides the description of the fields nested in this field, if the field
  /// is a message type that defines multiple fields.
  ///
  /// Output only.
  core.List<GoogleChromePolicyV1PolicySchemaFieldDescription>?
      nestedFieldDescriptions;

  GoogleChromePolicyV1PolicySchemaFieldDescription({
    this.description,
    this.field,
    this.fieldDependencies,
    this.inputConstraint,
    this.knownValueDescriptions,
    this.nestedFieldDescriptions,
  });

  GoogleChromePolicyV1PolicySchemaFieldDescription.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          fieldDependencies: _json.containsKey('fieldDependencies')
              ? (_json['fieldDependencies'] as core.List)
                  .map((value) =>
                      GoogleChromePolicyV1PolicySchemaFieldDependencies
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inputConstraint: _json.containsKey('inputConstraint')
              ? _json['inputConstraint'] as core.String
              : null,
          knownValueDescriptions: _json.containsKey('knownValueDescriptions')
              ? (_json['knownValueDescriptions'] as core.List)
                  .map((value) =>
                      GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nestedFieldDescriptions: _json.containsKey('nestedFieldDescriptions')
              ? (_json['nestedFieldDescriptions'] as core.List)
                  .map((value) =>
                      GoogleChromePolicyV1PolicySchemaFieldDescription.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (field != null) 'field': field!,
        if (fieldDependencies != null) 'fieldDependencies': fieldDependencies!,
        if (inputConstraint != null) 'inputConstraint': inputConstraint!,
        if (knownValueDescriptions != null)
          'knownValueDescriptions': knownValueDescriptions!,
        if (nestedFieldDescriptions != null)
          'nestedFieldDescriptions': nestedFieldDescriptions!,
      };
}

/// Provides detailed information about a known value that is allowed for a
/// particular field in a PolicySchema.
class GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription {
  /// Additional description for this value.
  ///
  /// Output only.
  core.String? description;

  /// The string represenstation of the value that can be set for the field.
  ///
  /// Output only.
  core.String? value;

  GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription({
    this.description,
    this.value,
  });

  GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription.fromJson(
      core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (value != null) 'value': value!,
      };
}

/// Provides special notice messages related to a particular value in a field
/// that is part of a PolicySchema.
class GoogleChromePolicyV1PolicySchemaNoticeDescription {
  /// Whether the user needs to acknowledge the notice message before the value
  /// can be set.
  ///
  /// Output only.
  core.bool? acknowledgementRequired;

  /// The field name associated with the notice.
  ///
  /// Output only.
  core.String? field;

  /// The notice message associate with the value of the field.
  ///
  /// Output only.
  core.String? noticeMessage;

  /// The value of the field that has a notice.
  ///
  /// When setting the field to this value, the user may be required to
  /// acknowledge the notice message in order for the value to be set.
  ///
  /// Output only.
  core.String? noticeValue;

  GoogleChromePolicyV1PolicySchemaNoticeDescription({
    this.acknowledgementRequired,
    this.field,
    this.noticeMessage,
    this.noticeValue,
  });

  GoogleChromePolicyV1PolicySchemaNoticeDescription.fromJson(core.Map _json)
      : this(
          acknowledgementRequired: _json.containsKey('acknowledgementRequired')
              ? _json['acknowledgementRequired'] as core.bool
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          noticeMessage: _json.containsKey('noticeMessage')
              ? _json['noticeMessage'] as core.String
              : null,
          noticeValue: _json.containsKey('noticeValue')
              ? _json['noticeValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgementRequired != null)
          'acknowledgementRequired': acknowledgementRequired!,
        if (field != null) 'field': field!,
        if (noticeMessage != null) 'noticeMessage': noticeMessage!,
        if (noticeValue != null) 'noticeValue': noticeValue!,
      };
}

/// The key used to identify the target on which the policy will be applied.
class GoogleChromePolicyV1PolicyTargetKey {
  /// Map containing the additional target key name and value pairs used to
  /// further identify the target of the policy.
  core.Map<core.String, core.String>? additionalTargetKeys;

  /// The target resource on which this policy is applied.
  ///
  /// The following resources are supported: * Organizational Unit
  /// ("orgunits/{orgunit_id}")
  core.String? targetResource;

  GoogleChromePolicyV1PolicyTargetKey({
    this.additionalTargetKeys,
    this.targetResource,
  });

  GoogleChromePolicyV1PolicyTargetKey.fromJson(core.Map _json)
      : this(
          additionalTargetKeys: _json.containsKey('additionalTargetKeys')
              ? (_json['additionalTargetKeys']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          targetResource: _json.containsKey('targetResource')
              ? _json['targetResource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalTargetKeys != null)
          'additionalTargetKeys': additionalTargetKeys!,
        if (targetResource != null) 'targetResource': targetResource!,
      };
}

/// A particular value for a policy managed by the service.
class GoogleChromePolicyV1PolicyValue {
  /// The fully qualified name of the policy schema associated with this policy.
  core.String? policySchema;

  /// The value of the policy that is compatible with the schema that it is
  /// associated with.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? value;

  GoogleChromePolicyV1PolicyValue({
    this.policySchema,
    this.value,
  });

  GoogleChromePolicyV1PolicyValue.fromJson(core.Map _json)
      : this(
          policySchema: _json.containsKey('policySchema')
              ? _json['policySchema'] as core.String
              : null,
          value: _json.containsKey('value')
              ? _json['value'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policySchema != null) 'policySchema': policySchema!,
        if (value != null) 'value': value!,
      };
}

/// Request message for getting the resolved policy value for a specific target.
class GoogleChromePolicyV1ResolveRequest {
  /// The maximum number of policies to return, defaults to 100 and has a
  /// maximum of 1000.
  core.int? pageSize;

  /// The page token used to retrieve a specific page of the request.
  core.String? pageToken;

  /// The schema filter to apply to the resolve request.
  ///
  /// Specify a schema name to view a particular schema, for example:
  /// chrome.users.ShowLogoutButton Wildcards are supported, but only in the
  /// leaf portion of the schema name. Wildcards cannot be used in namespace
  /// directly. Please read
  /// https://developers.google.com/chrome/chrome-management/guides/policyapi
  /// for details on schema namepsaces. For example: Valid: "chrome.users.*",
  /// "chrome.users.apps.*", "chrome.printers.*" Invalid: "*", "*.users",
  /// "chrome.*", "chrome.*.apps.*"
  core.String? policySchemaFilter;

  /// The key of the target resource on which the policies should be resolved.
  ///
  /// The target resource must point to an Org Unit.
  ///
  /// Required.
  GoogleChromePolicyV1PolicyTargetKey? policyTargetKey;

  GoogleChromePolicyV1ResolveRequest({
    this.pageSize,
    this.pageToken,
    this.policySchemaFilter,
    this.policyTargetKey,
  });

  GoogleChromePolicyV1ResolveRequest.fromJson(core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          policySchemaFilter: _json.containsKey('policySchemaFilter')
              ? _json['policySchemaFilter'] as core.String
              : null,
          policyTargetKey: _json.containsKey('policyTargetKey')
              ? GoogleChromePolicyV1PolicyTargetKey.fromJson(
                  _json['policyTargetKey']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (policySchemaFilter != null)
          'policySchemaFilter': policySchemaFilter!,
        if (policyTargetKey != null) 'policyTargetKey': policyTargetKey!,
      };
}

/// Response message for getting the resolved policy value for a specific
/// target.
class GoogleChromePolicyV1ResolveResponse {
  /// The page token used to get the next set of resolved policies found by the
  /// request.
  core.String? nextPageToken;

  /// The list of resolved policies found by the resolve request.
  core.List<GoogleChromePolicyV1ResolvedPolicy>? resolvedPolicies;

  GoogleChromePolicyV1ResolveResponse({
    this.nextPageToken,
    this.resolvedPolicies,
  });

  GoogleChromePolicyV1ResolveResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          resolvedPolicies: _json.containsKey('resolvedPolicies')
              ? (_json['resolvedPolicies'] as core.List)
                  .map((value) => GoogleChromePolicyV1ResolvedPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resolvedPolicies != null) 'resolvedPolicies': resolvedPolicies!,
      };
}

/// The resolved value of a policy for a given target.
class GoogleChromePolicyV1ResolvedPolicy {
  /// The source resource from which this policy value is obtained.
  ///
  /// May be the same as `targetKey` if the policy is directly modified on the
  /// target, otherwise it would be another resource from which the policy gets
  /// its value (if applicable). If not present, the source is the default value
  /// for the customer.
  ///
  /// Output only.
  GoogleChromePolicyV1PolicyTargetKey? sourceKey;

  /// The target resource for which the resolved policy value applies.
  ///
  /// Output only.
  GoogleChromePolicyV1PolicyTargetKey? targetKey;

  /// The resolved value of the policy.
  ///
  /// Output only.
  GoogleChromePolicyV1PolicyValue? value;

  GoogleChromePolicyV1ResolvedPolicy({
    this.sourceKey,
    this.targetKey,
    this.value,
  });

  GoogleChromePolicyV1ResolvedPolicy.fromJson(core.Map _json)
      : this(
          sourceKey: _json.containsKey('sourceKey')
              ? GoogleChromePolicyV1PolicyTargetKey.fromJson(
                  _json['sourceKey'] as core.Map<core.String, core.dynamic>)
              : null,
          targetKey: _json.containsKey('targetKey')
              ? GoogleChromePolicyV1PolicyTargetKey.fromJson(
                  _json['targetKey'] as core.Map<core.String, core.dynamic>)
              : null,
          value: _json.containsKey('value')
              ? GoogleChromePolicyV1PolicyValue.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceKey != null) 'sourceKey': sourceKey!,
        if (targetKey != null) 'targetKey': targetKey!,
        if (value != null) 'value': value!,
      };
}

/// Request message for uploading a file for a policy.
///
/// Next ID: 5
class GoogleChromePolicyV1UploadPolicyFileRequest {
  /// The fully qualified policy schema and field name this file is uploaded
  /// for.
  ///
  /// This information will be used to validate the content type of the file.
  ///
  /// Required.
  core.String? policyField;

  GoogleChromePolicyV1UploadPolicyFileRequest({
    this.policyField,
  });

  GoogleChromePolicyV1UploadPolicyFileRequest.fromJson(core.Map _json)
      : this(
          policyField: _json.containsKey('policyField')
              ? _json['policyField'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyField != null) 'policyField': policyField!,
      };
}

/// Response message for downloading an uploaded file.
///
/// Next ID: 2
class GoogleChromePolicyV1UploadPolicyFileResponse {
  /// The uri for end user to download the file.
  core.String? downloadUri;

  GoogleChromePolicyV1UploadPolicyFileResponse({
    this.downloadUri,
  });

  GoogleChromePolicyV1UploadPolicyFileResponse.fromJson(core.Map _json)
      : this(
          downloadUri: _json.containsKey('downloadUri')
              ? _json['downloadUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downloadUri != null) 'downloadUri': downloadUri!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// Describes a message type.
class Proto2DescriptorProto {
  core.List<Proto2EnumDescriptorProto>? enumType;
  core.List<Proto2FieldDescriptorProto>? field;
  core.String? name;
  core.List<Proto2DescriptorProto>? nestedType;
  core.List<Proto2OneofDescriptorProto>? oneofDecl;

  Proto2DescriptorProto({
    this.enumType,
    this.field,
    this.name,
    this.nestedType,
    this.oneofDecl,
  });

  Proto2DescriptorProto.fromJson(core.Map _json)
      : this(
          enumType: _json.containsKey('enumType')
              ? (_json['enumType'] as core.List)
                  .map((value) => Proto2EnumDescriptorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          field: _json.containsKey('field')
              ? (_json['field'] as core.List)
                  .map((value) => Proto2FieldDescriptorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nestedType: _json.containsKey('nestedType')
              ? (_json['nestedType'] as core.List)
                  .map((value) => Proto2DescriptorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          oneofDecl: _json.containsKey('oneofDecl')
              ? (_json['oneofDecl'] as core.List)
                  .map((value) => Proto2OneofDescriptorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enumType != null) 'enumType': enumType!,
        if (field != null) 'field': field!,
        if (name != null) 'name': name!,
        if (nestedType != null) 'nestedType': nestedType!,
        if (oneofDecl != null) 'oneofDecl': oneofDecl!,
      };
}

/// Describes an enum type.
class Proto2EnumDescriptorProto {
  core.String? name;
  core.List<Proto2EnumValueDescriptorProto>? value;

  Proto2EnumDescriptorProto({
    this.name,
    this.value,
  });

  Proto2EnumDescriptorProto.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.List)
                  .map((value) => Proto2EnumValueDescriptorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Describes a value within an enum.
class Proto2EnumValueDescriptorProto {
  core.String? name;
  core.int? number;

  Proto2EnumValueDescriptorProto({
    this.name,
    this.number,
  });

  Proto2EnumValueDescriptorProto.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          number:
              _json.containsKey('number') ? _json['number'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
      };
}

/// Describes a field within a message.
class Proto2FieldDescriptorProto {
  /// For numeric types, contains the original text representation of the value.
  ///
  /// For booleans, "true" or "false". For strings, contains the default text
  /// contents (not escaped in any way). For bytes, contains the C escaped
  /// value. All bytes \>= 128 are escaped.
  core.String? defaultValue;

  /// JSON name of this field.
  ///
  /// The value is set by protocol compiler. If the user has set a "json_name"
  /// option on this field, that option's value will be used. Otherwise, it's
  /// deduced from the field's name by converting it to camelCase.
  core.String? jsonName;

  ///
  /// Possible string values are:
  /// - "LABEL_OPTIONAL" : 0 is reserved for errors
  /// - "LABEL_REQUIRED"
  /// - "LABEL_REPEATED"
  core.String? label;
  core.String? name;
  core.int? number;

  /// If set, gives the index of a oneof in the containing type's oneof_decl
  /// list.
  ///
  /// This field is a member of that oneof.
  core.int? oneofIndex;

  /// If true, this is a proto3 "optional".
  ///
  /// When a proto3 field is optional, it tracks presence regardless of field
  /// type. When proto3_optional is true, this field must be belong to a oneof
  /// to signal to old proto3 clients that presence is tracked for this field.
  /// This oneof is known as a "synthetic" oneof, and this field must be its
  /// sole member (each proto3 optional field gets its own synthetic oneof).
  /// Synthetic oneofs exist in the descriptor only, and do not generate any
  /// API. Synthetic oneofs must be ordered after all "real" oneofs. For message
  /// fields, proto3_optional doesn't create any semantic change, since
  /// non-repeated message fields always track presence. However it still
  /// indicates the semantic detail of whether the user wrote "optional" or not.
  /// This can be useful for round-tripping the .proto file. For consistency we
  /// give message fields a synthetic oneof also, even though it is not required
  /// to track presence. This is especially important because the parser can't
  /// tell if a field is a message or an enum, so it must always create a
  /// synthetic oneof. Proto2 optional fields do not set this flag, because they
  /// already indicate optional with `LABEL_OPTIONAL`.
  core.bool? proto3Optional;

  /// If type_name is set, this need not be set.
  ///
  /// If both this and type_name are set, this must be one of TYPE_ENUM,
  /// TYPE_MESSAGE or TYPE_GROUP.
  /// Possible string values are:
  /// - "TYPE_DOUBLE" : 0 is reserved for errors. Order is weird for historical
  /// reasons.
  /// - "TYPE_FLOAT"
  /// - "TYPE_INT64" : Not ZigZag encoded. Negative numbers take 10 bytes. Use
  /// TYPE_SINT64 if negative values are likely.
  /// - "TYPE_UINT64"
  /// - "TYPE_INT32" : Not ZigZag encoded. Negative numbers take 10 bytes. Use
  /// TYPE_SINT32 if negative values are likely.
  /// - "TYPE_FIXED64"
  /// - "TYPE_FIXED32"
  /// - "TYPE_BOOL"
  /// - "TYPE_STRING"
  /// - "TYPE_GROUP" : Tag-delimited aggregate. Group type is deprecated and not
  /// supported in proto3. However, Proto3 implementations should still be able
  /// to parse the group wire format and treat group fields as unknown fields.
  /// - "TYPE_MESSAGE" : Length-delimited aggregate.
  /// - "TYPE_BYTES" : New in version 2.
  /// - "TYPE_UINT32"
  /// - "TYPE_ENUM"
  /// - "TYPE_SFIXED32"
  /// - "TYPE_SFIXED64"
  /// - "TYPE_SINT32" : Uses ZigZag encoding.
  /// - "TYPE_SINT64" : Uses ZigZag encoding.
  core.String? type;

  /// For message and enum types, this is the name of the type.
  ///
  /// If the name starts with a '.', it is fully-qualified. Otherwise, C++-like
  /// scoping rules are used to find the type (i.e. first the nested types
  /// within this message are searched, then within the parent, on up to the
  /// root namespace).
  core.String? typeName;

  Proto2FieldDescriptorProto({
    this.defaultValue,
    this.jsonName,
    this.label,
    this.name,
    this.number,
    this.oneofIndex,
    this.proto3Optional,
    this.type,
    this.typeName,
  });

  Proto2FieldDescriptorProto.fromJson(core.Map _json)
      : this(
          defaultValue: _json.containsKey('defaultValue')
              ? _json['defaultValue'] as core.String
              : null,
          jsonName: _json.containsKey('jsonName')
              ? _json['jsonName'] as core.String
              : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          number:
              _json.containsKey('number') ? _json['number'] as core.int : null,
          oneofIndex: _json.containsKey('oneofIndex')
              ? _json['oneofIndex'] as core.int
              : null,
          proto3Optional: _json.containsKey('proto3Optional')
              ? _json['proto3Optional'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          typeName: _json.containsKey('typeName')
              ? _json['typeName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (jsonName != null) 'jsonName': jsonName!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
        if (oneofIndex != null) 'oneofIndex': oneofIndex!,
        if (proto3Optional != null) 'proto3Optional': proto3Optional!,
        if (type != null) 'type': type!,
        if (typeName != null) 'typeName': typeName!,
      };
}

/// Describes a complete .proto file.
class Proto2FileDescriptorProto {
  core.List<Proto2EnumDescriptorProto>? enumType;

  /// All top-level definitions in this file.
  core.List<Proto2DescriptorProto>? messageType;

  /// file name, relative to root of source tree
  core.String? name;

  /// e.g. "foo", "foo.bar", etc.
  core.String? package;

  /// The syntax of the proto file.
  ///
  /// The supported values are "proto2" and "proto3".
  core.String? syntax;

  Proto2FileDescriptorProto({
    this.enumType,
    this.messageType,
    this.name,
    this.package,
    this.syntax,
  });

  Proto2FileDescriptorProto.fromJson(core.Map _json)
      : this(
          enumType: _json.containsKey('enumType')
              ? (_json['enumType'] as core.List)
                  .map((value) => Proto2EnumDescriptorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          messageType: _json.containsKey('messageType')
              ? (_json['messageType'] as core.List)
                  .map((value) => Proto2DescriptorProto.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          package: _json.containsKey('package')
              ? _json['package'] as core.String
              : null,
          syntax: _json.containsKey('syntax')
              ? _json['syntax'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enumType != null) 'enumType': enumType!,
        if (messageType != null) 'messageType': messageType!,
        if (name != null) 'name': name!,
        if (package != null) 'package': package!,
        if (syntax != null) 'syntax': syntax!,
      };
}

/// Describes a oneof.
class Proto2OneofDescriptorProto {
  core.String? name;

  Proto2OneofDescriptorProto({
    this.name,
  });

  Proto2OneofDescriptorProto.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}
