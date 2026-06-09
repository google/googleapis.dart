// Copyright 2026 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'package:http/http.dart' as http;

Future<String> serviceAccountEmailFromMetadataServer({
  required http.Client client,
  bool refresh = false,
}) {
  throw UnsupportedError('Metadata server is not supported on this platform.');
}
