import 'package:get/get.dart';

class HomeController extends GetxController {
  var qtdMesas = 27.obs;

  var _filtroMesa = "ALL".obs;
  String get filtroMesa => _filtroMesa.value;

  void setFiltroMesa(String novo) {
    _filtroMesa.value = novo;
    // TODO: FILTRAR LISTA DE MESAS
  }
}
