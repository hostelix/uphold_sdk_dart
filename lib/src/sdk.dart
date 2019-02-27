import '../src/services/oauth-client.dart' show OAuthClient;

class SDK {
  Map<String, dynamic> defaultOptions = {
    'accessTokenKey': 'uphold.access_token',
    'baseUrl': 'api.uphold.com',
    'itemsPerPage': 10,
    'refreshTokenKey': 'uphold.refresh_token',
    'version': 'v0'
  };
  OAuthClient _oauthClient;

  Map<String, dynamic> options;

  SDK(
    String clientId,
    String clientSecret, {
    String accessTokenKey,
    int itemsPerPage,
  }) {
    _oauthClient = OAuthClient('baseUrl', 'clientId', 'clientSecret');
  }
}
