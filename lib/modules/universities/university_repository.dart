import 'package:wklcomanda/modules/universities/i_university_repository.dart';
import 'package:wklcomanda/services/i_rest_service.dart';
import 'package:wklcomanda/services/resp.dart';

class UniversityRepository implements IUniversityRepository {
  final IRestService _http;

  UniversityRepository(this._http);

  @override
  Future<Resp<List<Map<String, dynamic>>>> getAll() async {
    var resp = await _http.restGet<List<dynamic>>(
      'search',
      query: {'country': 'Brazil'},
    );

    if (resp.isError && resp.data != null) {
      return Resp.ok(resp.data!.map((e) => e as Map<String, dynamic>).toList());
    }

    return Resp.error(resp.error);
  }
}
