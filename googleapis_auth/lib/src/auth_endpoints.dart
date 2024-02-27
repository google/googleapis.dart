import 'known_uris.dart';

abstract class AuthEndpoints {
  const AuthEndpoints();

  Uri get authorizationEndpoint;
  Uri get tokenEndpoint;
}

class GoogleAuthEndpoints extends AuthEndpoints {
  const GoogleAuthEndpoints();

  @override
  Uri get authorizationEndpoint => googleOauth2AuthorizationEndpoint;

  @override
  Uri get tokenEndpoint => googleOauth2TokenEndpoint;
}
