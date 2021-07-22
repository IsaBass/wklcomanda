import 'dart:io';

import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:wklcomanda/shared/services/i_http_service.dart';

class GetconnectService extends GetConnect implements IHttpService {
  @override
  void onInit() {
    //
    // add your local storage here to load for every request
    var token = 'tttt'; // LocalStorage.readToken();
    //1.base_url
    httpClient.baseUrl = "http://base_url here";
    //2.
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = Duration(seconds: 8);
    httpClient.addResponseModifier((request, response) async {
      print(response.body);
    });
    httpClient.addRequestModifier((Request request) async {
      // add request here
      request.headers['teste'] = 'headerteste';
      return request;
    });
    var headers = {'Authorization': "Bearer $token"};
    httpClient.addAuthenticator((Request request) async {
      request.headers.addAll(headers);
      return request;
    });

    super.onInit();
  }

  @override
  void gett() {
    // TODO: implement gett
  }

  @override
  void postt() {
    // TODO: implement postt
  }

  @override
  void putt() {
    // TODO: implement putt
  }

  @override
  Future<Response<T>> deletee<T>(String url,
      {Map<String, String>? headers,
      String? contentType,
      Map<String, dynamic>? query,
      Decoder<T>? decoder}) {
    return httpClient.delete(baseUrl! + url,
        headers: headers,
        contentType: contentType,
        query: query,
        decoder: decoder);
  }
}
