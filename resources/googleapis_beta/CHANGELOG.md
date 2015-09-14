## 0.19.0

* [apis-breaking] logging:v1beta3: method/schema removals
* [apis] cloudresourcemanager:v1beta: method/schema changes

## 0.18.0

* [apis-breaking] appengine:v1beta4: schema changes
* [apis-breaking] cloudresourcemanager:v1beta: method/schema changes
* [apis-breaking] pubsub:v1beta2: method/schema changes
* [apis-breaking] sqladmin:v1beta4: method/schema changes
* [apis] dataflow:v1b3: schema changes
* [apis] deploymentmanager:v2beta2: schema changes
* [apis] replicapoolupdater:v1beta1: method/schema changes
* [apis-new] proximitybeacon:v1beta1

## 0.17.0

* [apis] dataflow:v1b3: added schemas/resources
* [apis] sqladmin:v1beta4: added method/schema
* [apis-removed] container:v1beta1

## 0.16.0

* [apis-breaking] replicapoolupdater:v1beta1: method/schema changes
* [apis-new] appengine:v1beta4
* [apis-new] cloudresourcemanager:v1beta1
* [apis-new] dataflow:v1b3
* [apis-new] deploymentmanager:v2beta2
* [apis] dns:v1beta1: method/schema changes
* [apis] genomics:v1beta2: method changes
* [apis] logging:v1beta3: method/schema changes
* [apis] resourceviews:v1beta1: schema changes
* [apis] resourceviews:v1beta2: schema changes

## 0.15.2

* [apis] replicapool:v1beta2: schema changes

## 0.15.1

* [apis] genomics:v1beta2: schema changes

## 0.15.0

* [apis-breaking] pubsub:v1beta2: schema changes, removed properties
* [apis] container:v1beta1: schema changes
* [apis] genomics:v1beta2: schema changes
* [apis] pubsub:v1beta1: schema changes
* [apis] replicapool:v1beta2: schema changes

## 0.14.0

* [api] pubsub:v1beta2: new methods/schemas
* [api-breaking] container:v1beta1: removed resource
* [api-breaking] genomics:v1beta2: removed resource

## 0.13.0

* [api] container:v1beta1: schema changes
* [api] genomics:v1beta2: new resource
* [api] sqladmin:v1beta3: schema changes
* [api-breaking] replicapoolupdater:v1beta1: schema changes [wire compatible]
* [apis-removed] dataflow:v1beta
* [apis-removed] dataflow:v1b43


## 0.12.0

* [api] container:v1beta1: new resources
* [api-breaking] genomics:v1beta2: removed resources
* [api-breaking] sqladmin:v1beta3: schema changes [wire compatible]

## 0.11.0

* [apis] container:v1beta1: schema changes
* [apis] dataflow:v1beta3: schema changes
* [apis] genomics:v1beta2: method and schema changes
* [apis] replicapool:v1beta2: schema changes
* [apis] sqladmin:1beta4: schema changes
* [apis-breaking] replicapoolupdater:v1beta1: schema changes
* [apis-new] logging:v1beta3
* [apis-removed] genomics:v1beta

## 0.10.0

* [apis-breaking] dataflow:v1b4: Removal of schemas
* [apis] dataflow:v1beta3: schema changes
* [apis] genomics:v1beta2: method/schema addition
* [apis] replicapoolupdater:v1beta1: schema changes
* [apis-new] pubsub:v1beta2

## 0.9.0

* [apis-new] cloudmonitoring:v2beta2: API added
* [apis-new] sqladmin:v1beta4: API added
* [apis] genomics:v1beta2: schema changes
* [apis] sqladmin:v1beta3: scope changes
* [apis-removed] cloudmonitoring:v2beta2: removed

## 0.8.0

* [apis-new] dataflow:v1b4: API added
* [apis] cloudmonitoring:v2beta1: method changes
* [apis] dataflow:v1beta2: schema changes
* [apis] genomics:v1beta2: new resources and schemas
* [apis-breaking] replicapoolupdater:v1beta1: schema/method changes

## 0.7.0

* [apis] container:v1beta1: schema changes
* [apis-breaking] genomics:v1beta2: schema changes
* [apis-breaking] replicapoolupdater:v1beta1: schema/method changes

## 0.6.2

* [generator] Roll to use DetailedApiRequestError when only a HTTP status code
  is present.

## 0.6.1

* [apis-new] dataflow:v1beta3: API added
* [apis-new] deploymentmanager:v2beta1: API added
* [apis] container:v1beta1: schema changes

## 0.6.0

* [apis] dns:v1beta1: schema changes
* [apis] genomics:v1beta2: schema changes
* [apis] sqladmin:v1beta3: schema changes
* [apis-breaking] replicapoolupdater:v1beta1: schema changes
* [generator] Roll to include optional rootUrl/servicePath arguments.

## 0.5.2

* [apis] container:v1beta1: schema changes
* [apis] replicapoolupdater:v1beta1: schema changes

## 0.5.1

* [apis] pubsub:v1beta1: schema changes

## 0.5.0

* [apis-new] container:v1beta1: API added
* [apis-new] genomics:v1beta2: API added
* [apis-new] replicapool:v1beta2: API added
* [apis-new] replicapoolupdater:v1beta1: API added
* [apis] autoscaler:v1beta2: additional schemas/methods
* [apis] qladmin:v1beta3: schema changes
* [apis-breaking] genomics:v1beta: removed methods
* [apis-removed] replicapool:v1beta1: removed (Deprecated)

## 0.4.0

* [apis] cloudmonitoring:v2beta1: additional schemas/methods
* [apis-breaking] genomics:v1beta: additional schemas/methods, minor removal of schema properties

## 0.3.0

* [apis-breaking] genomics:v1beta: breaking changes (method argument changes and schema change)

## 0.2.1

* [apis-new] resourceviews:v1beta2: API added
* [apis] genomics:v1beta: additional method/schema changes

## 0.2.0

* [apis] autoscaler:v1beta2: schema changes
* [apis] datastore:v1beta2: new API scopes, more descriptions
* [apis] manager:v1beta2: schema changes
* [apis-breaking] genomics:v1beta: major changes (method argument changes, schema renames, method removals/additions)
* [generator] Bugfix in resumable media uploader.

## 0.1.1

* [generator] Make shorter descriptions in pubspec.yaml: Only list api:version tuples.
* [generator] Rename test files to _test.dart so they get automatically run.

## 0.1.0

* First release
