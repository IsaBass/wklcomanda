import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wklcomanda/services/i_rest_service.dart';
import 'package:wklcomanda/services/resp.dart';

class RestDio implements IRestService {
  Dio dio = Dio();

  RestDio() {
    dio.options.baseUrl = 'http://universities.hipolabs.com/';
  }

  // @override
  // void onInit() {
  //   //
  //   // add your local storage here to load for every request
  //   var token = 'MyKey'; // LocalStorage.readToken();
  //   //1.base_url
  //   httpClient.baseUrl = "http://base_url here";
  //   /*
  //   http://universities.hipolabs.com/search?country=Brazil

  //   http://universities.hipolabs.com/search?name=middle&country=turkey

  //   https://api.coindesk.com/v1/bpi/currentprice.json

  //   */
  //   //2.
  //   httpClient.defaultContentType = "application/json";
  //   httpClient.timeout = Duration(seconds: 8);
  //   httpClient.addResponseModifier((request, response) async {
  //     print(response.body);
  //   });
  //   httpClient.addRequestModifier((Request request) async {
  //     // add request here
  //     request.headers['teste'] = 'headerteste';
  //     return request;
  //   });
  //   var headers = {'Authorization': "Bearer $token"};
  //   httpClient.addAuthenticator((Request request) async {
  //     request.headers.addAll(headers);
  //     return request;
  //   });

  //   super.onInit();
  // }

  @override
  Future<Resp<T>> restGet<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  }) async {
    try {
      var response = await dio.get(
        url,
        queryParameters: query,
        options: Options(
          headers: headers,
          contentType: contentType,
        ),
      );

      if (response.statusCode! > 300) {
        return Resp.error(
            'Falha: ${response.statusCode} ${response.statusMessage}');
      }

      return Resp.ok(response.data);
      //
    } catch (e) {
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
      var response = await dio.post(
        url,
        queryParameters: query,
        options: Options(
          headers: headers,
          contentType: contentType,
        ),
      );

      if (response.statusCode! > 300) {
        return Resp.error(
            'Falha: ${response.statusCode} ${response.statusMessage}');
      }

      return Resp.ok(jsonDecode(response.data));
      //
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
      var response = await dio.put(
        url,
        queryParameters: query,
        options: Options(
          headers: headers,
          contentType: contentType,
        ),
      );

      if (response.statusCode! > 300) {
        return Resp.error(
            'Falha: ${response.statusCode} ${response.statusMessage}');
      }

      return Resp.ok(jsonDecode(response.data));
      //
    } catch (e) {
      return Resp.error(e.toString());
    }
  }

  @override
  Future<Resp<T>> restDelete<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  }) async {
    try {
      var response = await dio.delete(
        url,
        queryParameters: query,
        options: Options(
          headers: headers,
          contentType: contentType,
        ),
      );

      if (response.statusCode! > 300) {
        return Resp.error(
            'Falha: ${response.statusCode} ${response.statusMessage}');
      }

      return Resp.ok(jsonDecode(response.data));
      //
    } catch (e) {
      return Resp.error(e.toString());
    }
  }
}
