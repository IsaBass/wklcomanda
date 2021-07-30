import 'resp.dart';

abstract class IRestService {
  //
  Future<Resp<T>> restGet<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  });

  Future<Resp<T>> restPost<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  });

  Future<Resp<T>> restPut<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  });

  Future<Resp<T>> restDelete<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
  });
}
