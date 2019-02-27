import '../utils/http.dart'
    show buildBearerAuthorizationHeader, buildBody, buildUrl;

class OAuthClient {
  String _clientId;
  String _clientSecret;
  Map<String, String> _headers;
  String _requestUrl;
  String _revokeUrl;

  OAuthClient(String baseUrl, String clientId, String clientSecret) {
    _clientId = clientId;
    _clientSecret = clientSecret;
    _headers = {'content-type': 'application/x-www-form-urlencoded'};
    _requestUrl = buildUrl(baseUrl, '/oauth2/token');
    _revokeUrl = buildUrl(baseUrl, '/oauth2/revoke');
  }

  Map<String, dynamic> buildAccessTokenRequestByAuthorizationCodeGrant(code) {
    return {
      'body': _generateRequestBody(
          {'code': code, 'grant_type': 'authorization_code'}),
      'headers': _headers,
      'url': _requestUrl
    };
  }

  Map<String, dynamic> buildRefreshTokenRequest(token) {
    return {
      'body': _generateRequestBody(
          {'grant_type': 'refresh_token', 'refresh_token': token}),
      'headers': _headers,
      'url': _requestUrl
    };
  }

  Map<String, dynamic> buildRevokeTokenRequest(token) {
    return {
      'body': buildBody({'token': token}),
      'headers': {}
        ..addAll(buildBearerAuthorizationHeader(token))
        ..addAll(_headers),
      'url': _revokeUrl
    };
  }

  String _generateRequestBody(Map<String, dynamic> data) {
    return buildBody({
      'client_id': _clientId,
      'client_secret': _clientSecret,
    }..addAll(data));
  }
}
