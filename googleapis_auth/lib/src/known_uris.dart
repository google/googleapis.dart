// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

/// token_endpoint
/// via https://accounts.google.com/.well-known/openid-configuration
final googleOauth2TokenEndpoint = Uri.https('oauth2.googleapis.com', 'token');

/// authorization_endpoint
/// via https://accounts.google.com/.well-known/openid-configuration
final googleOauth2AuthorizationEndpoint = Uri.https(
  'accounts.google.com',
  'o/oauth2/v2/auth',
);
