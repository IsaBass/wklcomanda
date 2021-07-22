import 'package:get/get_connect.dart';

abstract class IHttpService {
  void gett();

  void postt();

  void putt();

  Future<Response<T>> deletee<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
  });
}
