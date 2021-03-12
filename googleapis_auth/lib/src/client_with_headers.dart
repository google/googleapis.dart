import 'package:http/http.dart';

import 'http_client_base.dart';

/// Returns a [Client] which adds [headers] to the request headers of every
/// request.
///
/// Note: the returned [Client] modifies the [BaseRequest] passed to
/// [Client.send] by adding [headers]. Any existing headers with the same
/// key are overwritten.
Client clientUsingHeaders(
  Map<String, String> headers, {
  Client? baseClient,
}) {
  if (baseClient == null) {
    baseClient = Client();
  } else {
    baseClient = nonClosingClient(baseClient);
  }

  return _ClientWithHeaders(headers, baseClient);
}

class _ClientWithHeaders extends DelegatingClient {
  final Map<String, String> _headers;

  _ClientWithHeaders(
    this._headers,
    Client baseClient,
  ) : super(baseClient);

  @override
  Future<StreamedResponse> send(BaseRequest request) =>
      baseClient.send(request..headers.addAll(_headers));
}
