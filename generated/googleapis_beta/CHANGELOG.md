## 5.0.0-dev

- `fcmdata` - new!
- `ideahub` - new!

## 4.0.0

- All schema types now have positional constructor parameters.

### API changes

- `firebaseappcheck` - new!
- `networksecurity` - new!
- `osconfig` – new!

## 3.0.0

- `analyticsdata` - Replaced `v1alpha` with `v1beta`
- `datamigration` - **REMOVED** now in `package:googleapis`
- `firebasestorage` - new!

## 2.0.0

- APIs are now null-safe and require Dart 2.12.
- Now requires `package:_discoveryapis_commons` v1.

### API changes

See [package:googleapis](https://pub.dev/packages/googleapis) for the stable
versions of the changed APIs.

- `ondemandscanning` - new!
- `policysimulator` - new!
- `workflowexecution` - removed. Now stable.
- `workflows` - removed. Now stable.

## 1.0.0

### BREAKING changes to API shape

- `USER_AGENT` has been removed from each library. All libraries within the
  package share a common user-agent value.
- API classes have been renamed to use more standard casing. For example:
  `FirebasedynamiclinksApi` to `FirebaseDynamicLinksApi`.
- Resource classes have been renamed to drop the `Api` suffix. For example:
  `ManagedShortLinksResourceApi` to `ManagedShortLinksResource`.

### API changes

See [package:googleapis](https://pub.dev/packages/googleapis) for the stable
versions of the changed APIs.

- `analyticsadmin` - new
- `analyticsdata` - new
- `appengine` - removed. Use stable.
- `area120tables` - new
- `artifactregistry` - removed. Now stable.
- `billingbudgets` - removed. Now stable.
- `cloudresourcemanager` - removed. Use stable.
- `datafusion` - removed. Now stable.
- `datalabeling` - new
- `datamigration` - new
- `dialogflow` - removed. Now stable.
- `documentai` - new
- `domains` - new
- `firebasedatabase` - new
- `firebasehosting` - removed. Now stable.
- `firebaseml` - removed. Now stable.
- `gameservices` - removed. Now stable.
- `language` - removed. Use stable.
- `memcache` - removed. Now stable.
- `metastore` - new
- `networkconnectivity` - new
- `oslogin` - removed. Use stable.
- `privateca` - new
- `pubsub` - removed. Use stable.
- `recommendationengine` - new
- `runtimeconfig` - removed. Use stable.
- `servicedirectory` - removed. Now stable.
- `speech` - removed. Use stable.
- `tpu` - removed. Use stable.
- `transcoder` - new

## 0.51.0

- [api-new] artifactregistry:v1beta1
- [api-new] documentai:v1beta2
- [api-new] sqladmin:v1beta4
- [api-removed] dns:v2beta1
- [api-removed] sql:v1beta4
- [api-removed] commentanalyzer:v1alpha1
- [api-removed] networkmanagement:v1beta1
- [api-removed] recommender:v1beta1

## 0.50.0

- [api-new] bigqueryconnection:v1beta1
- [api-new] billingbudgets:v1beta1
- [api-new] datacatalog:v1beta1
- [api-new] firebaseml:v1beta2
- [api-new] gameservices:v1beta
- [api-new] lifesciences:v2beta
- [api-new] memcache:v1beta2
- [api-new] networkmanagement:v1beta1
- [api-new] prod_tt_sasportal:v1alpha1
- [api-new] recommender:v1beta1
- [api-new] sasportal:v1alpha1
- [api-new] servicedirectory:v1beta1
- [api-new] speech:v2beta1
- [api-new] sql:v1beta4
- [api-removed] proximitybeacon:v1beta1
- [api-removed] replicapool:v1beta1
- [api-removed] sqladmin:v1beta4
- [api-removed] cloudprivatecatalog:v1beta1
- [api-removed] cloudprivatecatalogproducer:v1beta1
- [api-removed] healthcare:v1beta1
- [api-removed] accessapproval:v1beta1
- [api-removed] binaryauthorization:v1beta1

## 0.49.0

- [api-new] accessapproval:v1beta1
- [api-new] cloudprivatecatalog:v1beta1
- [api-new] cloudprivatecatalogproducer:v1beta1
- [api-new] commentanalyzer:v1alpha1
- [api-new] datafusion:v1beta1
- [api-new] factchecktools:v1alpha1
- [api-new] firebase:v1beta1
- [api-new] healthcare:v1beta1
- [api-removed] accesscontextmanager:v1beta
- [api-removed] appengine:v1beta4
- [api-removed] appengine:v1beta4
- [api-removed] appengine:v1beta5
- [api-removed] appengine:v1beta5
- [api-removed] cloudasset:v1beta1
- [api-removed] cloudscheduler:v1beta1
- [api-removed] cloudtasks:v2beta3
- [api-removed] file:v1beta1
- [api-removed] logging:v2beta1
- [api-removed] logging:v2beta1
- [api-removed] servicenetworking:v1beta
- [api-removed] websecurityscanner:v1alpha

## 0.48.0

- [api-new] accesscontextmanager:v1beta
- [api-new] alertcenter:v1beta1
- [api-new] cloudasset:v1beta1
- [api-new] cloudscheduler:v1beta1
- [api-new] containeranalysis:v1beta1
- [api-new] file:v1beta1
- [api-new] firebasehosting:v1beta1
- [api-new] replicapool:v1beta1
- [api-new] servicenetworking:v1beta
- [api-removed] replicapool:v1beta2
- [api-removed] replicapoolupdater:v1beta1
- [api-removed] speech:v1beta1
- [api-removed] sqladmin:v1beta3

## 0.47.0+1

- Regenerate package with widened constraint for `package:http`

## 0.47.0

- [api-new] iap:v1beta1
- [api-new] websecurityscanner:v1alpha
- [api-new] redis:v1beta1
- [api-new] binaryauthorization:v1beta1
- [api] logging:v2beta1
- [api] dialogflow:v2beta1
- [api] adexchangebuyer2:v2beta1
- [api] cloudresourcemanager:v1beta1
- [api] cloudtasks:v2beta2
- [api] pubsub:v1beta2
- [api] dataflow:v1b3
- [api] toolresults:v1beta3
- [api] runtimeconfig:v1beta1
- [api] appengine:v1beta5
- [api] appengine:v1beta
- [api] appengine:v1beta4
- [api] sqladmin:v1beta4
- [api-breaking] tpu:v1alpha1
- [api-breaking] dns:v2beta1
- [api-breaking] cloudtasks:v2beta2
- [api-breaking] toolresults:v1beta3
- [api-removed] replicapool:v1beta2
- [api-removed] firestore:v1beta1
- [api-removed] resourceviews:v1beta2
- [api-removed] taskqueue:v1beta2

## 0.46.1

- Support Dart 2 stable.

## 0.46.0

- [api-new] websecurityscanner:v1alpha
- [api-new] redis:v1beta1
- [api-new] texttospeech:v1beta1
- [api-new] composer:v1beta1
- [api] logging:v2beta1
- [api] tpu:v1alpha1
- [api] dns:v2beta1
- [api] oslogin:v1beta
- [api] oslogin:v1alpha
- [api] dialogflow:v2beta1
- [api] adexchangebuyer2:v2beta1
- [api] cloudtasks:v2beta2
- [api] dataflow:v1b3
- [api] appengine:v1beta5
- [api] appengine:v1beta
- [api] appengine:v1beta4
- [api] sqladmin:v1beta4
- [api-breaking] dns:v2beta1
- [api-breaking] adexchangebuyer2:v2beta1
- [api-breaking] adexchangebuyer2:v2beta1
- [api-removed] dlp:v2beta2
- [api-removed] dlp:v2beta1
- [api-removed] resourceviews:v1beta1
- [api-removed] videointelligence:v1beta1
- [api-removed] clouduseraccounts:beta

## 0.45.3

- Re-generated with updated code generator to support Dart 2.

## 0.45.2

- Re-generated with updated code generator to support Dart 2.

## 0.45.1

- Re-generated with updated code generator to support Dart 2.

## 0.45.0

- [api] dlp:v2beta2
- [api] dialogflow:v2beta1
- [api] adexchangebuyer2:v2beta1
- [api] dataflow:v1b3
- [api] appengine:v1beta
- [api] sqladmin:v1beta3
- [api] sqladmin:v1beta4
- [api-breaking] dialogflow:v2beta1
- [api-breaking] dialogflow:v2beta1

## 0.44.0

- [api] dialogflow:v2beta1
- [api] dataflow:v1b3
- [api] tpu:v1alpha1
- [api] logging:v2beta1
- [api] appengine:v1beta
- [api] appengine:v1beta4
- [api] appengine:v1beta5
- [api-breaking] cloudtasks:v2beta2
- [api-breaking] oslogin:v1beta
- [api-breaking] oslogin:v1alpha
- [api-breaking] speech:v1beta1

## 0.43.0

- [api] dlp:v2beta1
- [api] adexchangebuyer2:v2beta1
- [api] cloudtasks:v2beta2
- [api] tpu:v1alpha1
- [api-breaking] cloudtasks:v2beta2
- [api-breaking] cloudtasks:v2beta2
- [api-breaking] speech:v1beta1

## 0.42.0

- [api-new] dialogflow:v2beta1
- [api-new] tpu:v1alpha1
- [api] appengine:v1beta
- [api] cloudtasks:v2beta2
- [api] dataflow:v1b3
- [api] dlp:v2beta1
- [api] proximitybeacon:v1beta1
- [api] speech:v1beta1
- [api-breaking] cloudtasks:v2beta2
- [api-breaking] dataflow:v1b3

## 0.41.0

- [api] appengine:v1beta4
- [api] dataflow:v1b3
- [api] logging:v2beta1
- [api] oslogin:v1alpha
- [api] oslogin:v1beta
- [api] videointelligence:v1beta1
- [api-breaking] appengine:v1beta
- [api-breaking] appengine:v1beta4
- [api-breaking] appengine:v1beta5
- [api-breaking] dataflow:v1b3
- [api-breaking] videointelligence:v1beta1
- [api-removed] cloudmonitoring:v2beta2

## 0.40.1

- [api] sqladmin:v1beta4
- [api] dlp:v2beta1
- [api] toolresults:v1beta3

## 0.40.0

- [api-new] cloudtasks:v2beta2
- [api-new] firestore:v1beta1
- [api-new] oslogin:v1beta
- [api] dlp:v2beta1
- [api] proximitybeacon:v1beta1
- [api] oslogin:v1alpha
- [api] dataflow:v1b3
- [api-breaking] oslogin:v1alpha
- [api-breaking] dataflow:v1b3

## 0.39.2

- [api] appengine:v1beta
- [api] dataflow:v1b3
- [api] dlp:v2beta1
- [api] language:v1beta2
- [api] logging:v2beta1
- [api] toolresults:v1beta3firstparty
- [api] toolresults:v1beta3
- [api] videointelligence:v1beta1

## 0.39.1

- [api] dataflow:v1b3
- [api] dlp:v2beta1
- [api] logging:v2beta1
- [api] sqladmin:v1beta4
- [api] toolresults:v1beta3firstparty
- [api] toolresults:v1beta3

## 0.39.0

- [api-removed] dataproc:v1beta1

## 0.38.1

- [api-new] oslogin:v1alpha
- [api-new] toolresults:v1beta3firstparty

## 0.38.0

- [api] sqladmin:v1beta4
- [api] adexchangebuyer2:v2beta1
- [api] dataflow:v1b3
- [api] appengine:v1beta
- [api] appengine:v1beta4
- [api] appengine:v1beta5
- [api-breaking] sqladmin:v1beta4
- [api-breaking] dataflow:v1b3

## 0.37.0

- [api-new] language:v1beta2
- [api-new] videointelligence:v1beta1
- [api] sqladmin:v1beta4
- [api] clouderrorreporting:v1beta1
- [api] dlp:v2beta1
- [api] dataflow:v1b3
- [api] logging:v2beta1
- [api-breaking] dataflow:v1b3
- [api-breaking] dataflow:v1b3
- [api-breaking] dlp:v2beta1

## 0.36.0

- [api] dataflow:v1b3
- [api] logging:v2beta1
- [api-breaking] cloudresourcemanager:v1beta1
- [api-breaking] runtimeconfig:v1beta1
- [api-removed] datastore:v1beta3
- [api-removed] datastore:v1beta2

## 0.35.0

- [api-new] dlp:v2beta1
- [api] appengine:v1beta4
- [api] appengine:v1beta5
- [api] appengine:v1beta
- [api] cloudresourcemanager:v1beta1
- [api] dataflow:v1b3
- [api] dataproc:v1beta1
- [api] proximitybeacon:v1beta1
- [api-breaking] appengine:v1beta
- [api-breaking] dataflow:v1b3
- [api-removed] cloudkmsv1beta1
- [api-removed] mlv1beta1

## 0.34.0

- [api-new] appengine
- [api] sqladmin
- [api] dataproc
- [api] adexchangebuyer2
- [api] dataflow
- [api] ml
- [api-breaking] dataproc
- [api-removed] dfareporting

## 0.33.0

[api-breaking] dataflow [api-breaking] ml [api-breaking] speech [api] dataflow:
changes [api] dataproc: changes [api] ml: changes [api] sqladmin: changes

## 0.32.1

- [api-new] cloudkms:v1beta1
- [api] dataflow:v1b3: schema changes
- [api] ml:v1beta1: schema changes
- [api] sqladmin:v1beta4: new methods
- [api] toolresults:v1beta3: new resources

## 0.32.0

- [api-removal] genomics:v1beta2
- [api] appengine:v1beta4: schema changes
- [api] appengine:v1beta5: schema changes
- [api] cloudreporting:v1beta1: schema changes
- [api] dataflow:v1b3: schema changes
- [api] language:v1beta1: schema/method changes
- [api] logging:v2beta1: schema/method changes
- [api] ml:v1beta1: schema changes
- [api] runtimeconfig:v1beta1: schema/method changes
- [api] sqladmin:v1beta4: schema changes

## 0.31.0

- [api-new] ml:v1beta1
- [api-breaking] dataflow:v1b3: resource changes
- [api-breaking] dns:v2beta1: renamed resource
- [api-breaking] logging:v1beta1: added resources, method changes
- [api] appengine:v1beta4: schema/method changes
- [api] appengine:v1beta5: schema/method changes
- [api] cloudreporting:v1beta1: schema changes
- [api] cloudresourcemanager:v1beta1: schema/method changes
- [api] dataproc:v1beta1: schema/method changes
- [api] runtimeconfig:v1beta1: method changes
- [api] sqladmin:v1beta3: schema changes
- [api] sqladmin:v1beta4: schema changes

## 0.30.1

- [api] datastore:v1beta3: schema changes

## 0.30.0

- [api-new] language:v1beta1
- [api-new] speech:v1beta1
- [api] appengine:v1beta4: schema changes
- [api] appengine:v1beta5: schema changes
- [api] dataflow:v1b3: new resources, schema changes
- [api] runtimeconfig:v1beta1: schema changes
- [api-breaking] adexchangebuyer2:v2beta1: methods removed

## 0.29.0

- [api] adexchangebuyer2:v2beta1: new resource
- [api] appengine:v1beta4: new resource
- [api] appengine:v1beta5: new resource
- [api] clouderrorreporting:v1beta1: new methods
- [api] dataflow:v1b3: schema changes
- [api] sqladmin:v1beta4: schema changes
- [api-removal] autoscaler:v1beta2

## 0.28.0

- [api] appengine:v1beta4: schema changes
- [api] appengine:v1beta5: schema changes
- [api] cloudresourcemanager:v1beta1: method/schema changes
- [api] dataflow:v1b3: schema changes
- [api-breaking] toolresults:v1beta3: schema changes

## 0.27.1

- [api-new] dns:v2beta1

## 0.27.0

- [api-new] adexchangebuyer2:v2beta1
- [api-new] clouderrorreporting:v1beta1
- [api-new] datastore:v1beta3
- [api-new] runtimeconfig:v1beta1
- [api] cloudmonitoring:v2beta2: API new methods
- [api] cloudresourcemanager:v1beta1: schema/resource changes
- [api] dfareporting:v2.5beta1: Schema changes
- [api] genomics:v1beta2: schema changes
- [api] sqladmin:v1beta4: schema changes
- [api] toolresults:v1beta3: schema changes
- [api-breaking] autoscaler:v1beta2: schema/resource changes
- [api-breaking] cloudresourcemanager:v1beta1: method changes
- [api-breaking] dataproc:v1beta1: schema/resource changes
- [api-breaking] proximitybeacon:v1beta1, schema/resource changes
- [api-removal] reseller:v1sandbox
- [api-removal] manager:v1beta2

## 0.26.0

- [api] appengine:v1beta4: new resources
- [api] appengine:v1beta5: new resources
- [api-removal] deploymentmanager:v2beta2

## 0.25.0

- [api-new] dfareporting:v2.5beta1
- [api] dataflow:v1b3: method changes, schema changes
- [api] toolresults:v1beta3: schema changes
- [api-breaking] appengine:v1beta5: method changes
- [api-breaking] logging:v2beta1: schema changes
- [api-removal] deploymentmanager:v2beta1

## 0.24.0

- [api-new] appengine:v1beta5
- [api-new] toolresults:v1beta3
- [api] clouduseraccounts:beta: schema changes
- [api] dataflow:v1b3: schema changes
- [api] dataproc:v1beta1: new methods
- [api] deploymentmanager:v2beta2 schema changes
- [api] sqladmin:v1beta3: schema changes
- [api] sqladmin:v1beta4: schema changes
- [api] sqladmin:v1beta4: schema changes
- [api-breaking] cloudresourcemanager:v1beta1: method changes

## 0.23.2

- [api] appengine:v1beta4: schema changes
- [api] dataflow:v1b3: new schemas

## 0.23.1

- [api] dataflow:v1b3: schema changes

## 0.23.0

- [api-new] dataproc:v1beta1
- [api-new] logging:v2beta1
- [api] dataflow:v1b3: new method/resources
- [api] deploymentmanager:v2beta2: schema changes
- [api] sqladmin:v1beta4: schema changes
- [api-removal] dns:v1beta1
- [api-removal] logging:v1beta3
- [api-breaking] genomics:v1beta2: method removals

## 0.22.0

- [api] appengine:v1beta4: schema changes
- [api] cloudresourcemanager:v1beta1: schema changes
- [api-removed] logging:v2beta1

## 0.21.0

- [api] dataflow:v1b3: schema changes
- [api] pubsub:v1beta2: schema changes
- [api] sqladmin:v1beta4: schema changes
- [api-breaking] logging:v1beta3: method changes
- [api-breaking] logging:v2beta1: method changes
- [api-removal] pubsub:v1beta1

## 0.20.0

- [apis-breaking] logging:v1beta3: resource/schema changes
- [apis-new] logging:v2beta1
- [apis] sqladmin:v1beta3: resource/schema changes

## 0.19.1

- [apis-new] clouduseraccounts:beta

## 0.19.0

- [apis-breaking] logging:v1beta3: method/schema removals
- [apis] cloudresourcemanager:v1beta: method/schema changes

## 0.18.0

- [apis-breaking] appengine:v1beta4: schema changes
- [apis-breaking] cloudresourcemanager:v1beta: method/schema changes
- [apis-breaking] pubsub:v1beta2: method/schema changes
- [apis-breaking] sqladmin:v1beta4: method/schema changes
- [apis] dataflow:v1b3: schema changes
- [apis] deploymentmanager:v2beta2: schema changes
- [apis] replicapoolupdater:v1beta1: method/schema changes
- [apis-new] proximitybeacon:v1beta1

## 0.17.0

- [apis] dataflow:v1b3: added schemas/resources
- [apis] sqladmin:v1beta4: added method/schema
- [apis-removed] container:v1beta1

## 0.16.0

- [apis-breaking] replicapoolupdater:v1beta1: method/schema changes
- [apis-new] appengine:v1beta4
- [apis-new] cloudresourcemanager:v1beta1
- [apis-new] dataflow:v1b3
- [apis-new] deploymentmanager:v2beta2
- [apis] dns:v1beta1: method/schema changes
- [apis] genomics:v1beta2: method changes
- [apis] logging:v1beta3: method/schema changes
- [apis] resourceviews:v1beta1: schema changes
- [apis] resourceviews:v1beta2: schema changes

## 0.15.2

- [apis] replicapool:v1beta2: schema changes

## 0.15.1

- [apis] genomics:v1beta2: schema changes

## 0.15.0

- [apis-breaking] pubsub:v1beta2: schema changes, removed properties
- [apis] container:v1beta1: schema changes
- [apis] genomics:v1beta2: schema changes
- [apis] pubsub:v1beta1: schema changes
- [apis] replicapool:v1beta2: schema changes

## 0.14.0

- [api] pubsub:v1beta2: new methods/schemas
- [api-breaking] container:v1beta1: removed resource
- [api-breaking] genomics:v1beta2: removed resource

## 0.13.0

- [api] container:v1beta1: schema changes
- [api] genomics:v1beta2: new resource
- [api] sqladmin:v1beta3: schema changes
- [api-breaking] replicapoolupdater:v1beta1: schema changes [wire compatible]
- [apis-removed] dataflow:v1beta
- [apis-removed] dataflow:v1b43

## 0.12.0

- [api] container:v1beta1: new resources
- [api-breaking] genomics:v1beta2: removed resources
- [api-breaking] sqladmin:v1beta3: schema changes [wire compatible]

## 0.11.0

- [apis] container:v1beta1: schema changes
- [apis] dataflow:v1beta3: schema changes
- [apis] genomics:v1beta2: method and schema changes
- [apis] replicapool:v1beta2: schema changes
- [apis] sqladmin:1beta4: schema changes
- [apis-breaking] replicapoolupdater:v1beta1: schema changes
- [apis-new] logging:v1beta3
- [apis-removed] genomics:v1beta

## 0.10.0

- [apis-breaking] dataflow:v1b4: Removal of schemas
- [apis] dataflow:v1beta3: schema changes
- [apis] genomics:v1beta2: method/schema addition
- [apis] replicapoolupdater:v1beta1: schema changes
- [apis-new] pubsub:v1beta2

## 0.9.0

- [apis-new] cloudmonitoring:v2beta2: API added
- [apis-new] sqladmin:v1beta4: API added
- [apis] genomics:v1beta2: schema changes
- [apis] sqladmin:v1beta3: scope changes
- [apis-removed] cloudmonitoring:v2beta2: removed

## 0.8.0

- [apis-new] dataflow:v1b4: API added
- [apis] cloudmonitoring:v2beta1: method changes
- [apis] dataflow:v1beta2: schema changes
- [apis] genomics:v1beta2: new resources and schemas
- [apis-breaking] replicapoolupdater:v1beta1: schema/method changes

## 0.7.0

- [apis] container:v1beta1: schema changes
- [apis-breaking] genomics:v1beta2: schema changes
- [apis-breaking] replicapoolupdater:v1beta1: schema/method changes

## 0.6.2

- [generator] Roll to use DetailedApiRequestError when only a HTTP status code
  is present.

## 0.6.1

- [apis-new] dataflow:v1beta3: API added
- [apis-new] deploymentmanager:v2beta1: API added
- [apis] container:v1beta1: schema changes

## 0.6.0

- [apis] dns:v1beta1: schema changes
- [apis] genomics:v1beta2: schema changes
- [apis] sqladmin:v1beta3: schema changes
- [apis-breaking] replicapoolupdater:v1beta1: schema changes
- [generator] Roll to include optional rootUrl/servicePath arguments.

## 0.5.2

- [apis] container:v1beta1: schema changes
- [apis] replicapoolupdater:v1beta1: schema changes

## 0.5.1

- [apis] pubsub:v1beta1: schema changes

## 0.5.0

- [apis-new] container:v1beta1: API added
- [apis-new] genomics:v1beta2: API added
- [apis-new] replicapool:v1beta2: API added
- [apis-new] replicapoolupdater:v1beta1: API added
- [apis] autoscaler:v1beta2: additional schemas/methods
- [apis] qladmin:v1beta3: schema changes
- [apis-breaking] genomics:v1beta: removed methods
- [apis-removed] replicapool:v1beta1: removed (Deprecated)

## 0.4.0

- [apis] cloudmonitoring:v2beta1: additional schemas/methods
- [apis-breaking] genomics:v1beta: additional schemas/methods, minor removal of
  schema properties

## 0.3.0

- [apis-breaking] genomics:v1beta: breaking changes (method argument changes and
  schema change)

## 0.2.1

- [apis-new] resourceviews:v1beta2: API added
- [apis] genomics:v1beta: additional method/schema changes

## 0.2.0

- [apis] autoscaler:v1beta2: schema changes
- [apis] datastore:v1beta2: new API scopes, more descriptions
- [apis] manager:v1beta2: schema changes
- [apis-breaking] genomics:v1beta: major changes (method argument changes,
  schema renames, method removals/additions)
- [generator] Bugfix in resumable media uploader.

## 0.1.1

- [generator] Make shorter descriptions in pubspec.yaml: Only list api:version
  tuples.
- [generator] Rename test files to \_test.dart so they get automatically run.

## 0.1.0

- First release
