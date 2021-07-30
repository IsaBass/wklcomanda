import 'package:wklcomanda/services/resp.dart';

abstract class IUniversityRepository {
  Future<Resp<List<Map<String, dynamic>>>> getAll();
}
