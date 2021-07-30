import 'package:get/get.dart';
import 'package:wklcomanda/modules/universities/i_university_repository.dart';
import 'package:wklcomanda/modules/universities/university_controller.dart';
import 'package:wklcomanda/modules/universities/university_repository.dart';

class UniversityBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUniversityRepository>(UniversityRepository(Get.find()));
    Get.put(UniversityController(Get.find()));
  }
}
