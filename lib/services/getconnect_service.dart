import 'dart:convert';

import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:wklcomanda/services/i_rest_service.dart';
import 'package:wklcomanda/services/resp.dart';

class RestGetConnect extends GetConnect implements IRestService {
  @override
  void onInit() {
    //
    // add your local storage here to load for every request
    var token = 'tttt'; // LocalStorage.readToken();
    //1.base_url
    httpClient.baseUrl = "http://universities.hipolabs.com/";
    /*
    http://universities.hipolabs.com/search?country=Brazil

    http://universities.hipolabs.com/search?name=middle&country=turkey

    https://api.coindesk.com/v1/bpi/currentprice.json

    */
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
  Future<Resp<T>> restDelete<T>(String url,
      {Map<String, String>? headers,
      String? contentType,
      Map<String, dynamic>? query}) async {
    try {
      var response = await httpClient.delete(
        url,
        headers: headers,
        contentType: contentType,
        query: query,
      );
      if (response.isOk) {
        return Resp.ok(response.body);
      }
      return Resp.error('Falha: ${response.statusCode} ${response.statusText}');
    } catch (e) {
      return Resp.error(e.toString());
    }
  }

  @override
  Future<Resp<T>> restGet<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  }) async {
    try {
      var response = await httpClient.get(
        url,
        headers: headers,
        contentType: contentType,
        query: query,
      );
      if (response.isOk) {
        return Resp.ok(response.body as T);
      }
      return Resp.error('Falha: ${response.statusCode} ${response.statusText}');
    } catch (e) {
      print('erro get: ' + e.toString());
      return Resp.error(e.toString());
    }
  }

  @override
  Future<Resp<T>> restPost<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  }) async {
    try {
      var response = await httpClient.post(
        url,
        headers: headers,
        contentType: contentType,
        query: query,
      );
      if (response.isOk) {
        return Resp.ok(response.body);
      }
      return Resp.error('Falha: ${response.statusCode} ${response.statusText}');
    } catch (e) {
      return Resp.error(e.toString());
    }
  }

  @override
  Future<Resp<T>> restPut<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  }) async {
    try {
      var response = await httpClient.put(
        url,
        headers: headers,
        contentType: contentType,
        query: query,
      );
      if (response.isOk) {
        return Resp.ok(response.body);
      }
      return Resp.error('Falha: ${response.statusCode} ${response.statusText}');
    } catch (e) {
      return Resp.error(e.toString());
    }
  }
}
