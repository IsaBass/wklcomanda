import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/modules/universities/i_university_repository.dart';
import 'package:wklcomanda/shared/models/university.dart';

class UniversityController extends GetxController
    with StateMixin<List<University>> {
  final IUniversityRepository _repository;

  UniversityController(this._repository) {
    getAll();
  }

  // final univerities = <University>[].obs;

  //List<University>

  Future<void> getAll() async {
    change(null, status: RxStatus.loading());

    var resp = await _repository.getAll();

    if (resp.isOK) {
      var univerities = <University>[];

      univerities.addAll(resp.data!.map((e) => University.fromMap(e)).toList());
      change(univerities, status: RxStatus.success());
    } else if (resp.isError) {
      change(null, status: RxStatus.error(resp.error));
      Get.snackbar(
        'Falha de chamada',
        resp.error,
        backgroundColor: Colors.red[300],
      );
    } else {
      change(null, status: RxStatus.empty());
    }
  }
}
