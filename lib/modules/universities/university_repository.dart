import 'package:wklcomanda/modules/universities/i_university_repository.dart';
import 'package:wklcomanda/services/i_rest_service.dart';
import 'package:wklcomanda/services/resp.dart';

class UniversityRepository implements IUniversityRepository {
  final IRestService _http;

  UniversityRepository(this._http);

  @override
  Future<Resp<List<Map<String, dynamic>>>> getAll() async {
    var resp = await _http.restGet<dynamic>(
      'search',
      query: {'country': 'Brazil', 'name': 'Universidade'},
      headers: {
        "Accept": "application/json",
        "Access-Control-Allow-Origin": "*", // Required for CORS support to work
        "Access-Control-Allow-Credentials":
            'true', // Required for cookies, authorization headers with HTTPS
        // "Access-Control-Allow-Headers":
        //     "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "GET, HEAD, POST, OPTIONS",
      },
    );

    if (resp.isError) return Resp.error(resp.error);

    if (resp.isEmpty || (resp.data == null) || (resp.data as List).length == 0)
      return Resp.empty();
    if (resp.isOK) {
      return Resp.ok(
          (resp.data as List).map((e) => e as Map<String, dynamic>).toList());
    }

    return Resp.error(resp.error);
  }
}
