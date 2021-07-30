import 'package:get/get.dart';

import 'mesa_controller.dart';
import 'mesa_repository.dart';

class MesaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MesaRepository(Get.find()));
    Get.lazyPut<MesaController>(
      () => MesaController(
        Get.find(),
        mesa: Get.arguments['mesa'] ?? 0,
      ),
    );
  }
}
