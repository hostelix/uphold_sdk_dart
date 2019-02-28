import 'dart:convert';

Map<String, String> buildBearerAuthorizationHeader(String token) {
  return {'authorization': 'Bearer $token'};
}

Map<String, String> buildBasicAuthorizationHeader(username, password) {
  String credentials = base64Encode(utf8.encode('$username:$password'));
  return {'authorization': 'Basic $credentials'};
}

String normalizeURI(String uri) {
  return uri[0] != '/' ? uri : uri.substring(1);
}

Uri buildUrl(String baseUrl, String uri, {String version = '', Map<String, String> queryParams) {
  String resource = version.isNotEmpty ? '$uri/$version' : uri;
  return Uri.https(baseUrl, normalizeURI(resource), queryParams);
}

String buildBody(Map<String, String> data){
  return data.keys.map((String key) => "${Uri.encodeComponent(key)}=${Uri.encodeComponent(data[key])}").join("&");
}
