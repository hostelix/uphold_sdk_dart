import 'package:http/http.dart' show Request, Response;

import '../src/services/oauth_client.dart' show OAuthClient, TokenRequest;
import '../src/services/request_client.dart';
import '../src/version.dart' show SDK_VERSION;

class SDK {
  OAuthClient _oauthClient;
  RequestClient _client;
  SDKOptions _options;

  SDK(String clientId, String clientSecret, SDKOptions options) {
    if (options == null) {
      _options = SDKOptions();
    }
    _oauthClient = OAuthClient(_options.baseUrl, clientId, clientSecret);
    _client = RequestClient('Uphold Dart SDK v$SDK_VERSION');
  }

  Future<Response> authorize(code) {
    final req =
        _oauthClient.buildAccessTokenRequestByAuthorizationCodeGrant(code);

    return _authenticationRequest(req);
  }

  Future<Response> _authenticationRequest(Request req) {
    return _client.request(req);
  }

  /*Future<Response> _refreshToken(url, method, body, headers, options) {
    return _requestRefreshToken
        .then(tokens => {
          return this.client.request(url, method, body, {
            ...buildBearerAuthorizationHeader(tokens.access_token),
            ...headers
          }, options)
            .then(data => data.body);
        });
    };
  }*/

  Future<Response> _requestRefreshToken(token) {
    Request req = _oauthClient.buildRefreshTokenRequest(token);

    return _authenticationRequest(req);
  }

  Future<Response> _revokeToken(String token) {
    Request req = _oauthClient.buildRevokeTokenRequest(token);

    return _client.request(req);
  }
}

class SDKOptions {
  String _accessTokenKey;
  String _baseUrl;
  int _itemsPerPage;
  String _refreshTokenKey;
  String _version;

  SDKOptions(
      {String accessTokenKey = "uphold.access_token",
      String baseUrl = "https://api.uphold.com",
      int itemsPerPage = 10,
      String refreshTokenKey = "uphold.refresh_token",
      String version = "v0"}) {
    _accessTokenKey = accessTokenKey;
    _baseUrl = baseUrl;
    _itemsPerPage = itemsPerPage;
    _refreshTokenKey = refreshTokenKey;
    _version = version;
  }

  String get accessTokenKey => _accessTokenKey;
  String get baseUrl => _baseUrl;
  int get itemsPerPage => _itemsPerPage;
  String get refreshTokenKey => _refreshTokenKey;
  String get version => _version;
}
