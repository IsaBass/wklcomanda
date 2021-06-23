import 'package:get/get.dart';

import 'mesa_repository.dart';

class MesaController extends GetxController {
  final MesaRepository repository;
  MesaController(this.repository, {required String mesa}) {
    this.mesa = mesa;
  }

  final _mesa = ''.obs;
  set mesa(value) => this._mesa.value = value;
  get mesa => this._mesa.value;
}
