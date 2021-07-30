import 'package:get/get.dart';
import 'package:wklcomanda/modules/universities/i_university_repository.dart';
import 'package:wklcomanda/shared/models/university.dart';

class UniversityController extends GetxController {
  final IUniversityRepository _repository;

  UniversityController(this._repository) {
    getAll();
  }

  final univerities = <University>[].obs;

  Future<void> getAll() async {
    var resp = await _repository.getAll();

    if (resp.isOK) {
      univerities.addAll(resp.data!.map((e) => University.fromMap(e)).toList());
    } else {
      univerities.clear();
    }
  }
}
