import 'package:get/get.dart';
import 'package:wklcomanda/shared/services/getconnect_service.dart';
import 'package:wklcomanda/shared/services/i_http_service.dart';

import 'mesa_controller.dart';
import 'mesa_repository.dart';

class MesaBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<IHttpService>(GetconnectService());
    Get.lazyPut(() => MesaRepository(Get.find()));
    Get.lazyPut<MesaController>(
      () => MesaController(
        Get.find(),
        mesa: Get.arguments['mesa']!,
      ),
    );
  }
}
