import 'package:get/get.dart';
import 'package:wklcomanda/shared/models/item_model.dart';

import 'mesa_repository.dart';

class MesaController extends GetxController {
  final MesaRepository repository;
  MesaController(this.repository, {required String mesa}) {
    this.mesa = mesa;

    for (var i = 0; i < 7; i++) {
      itensRegistrados.add(
        Item(
          codProd: 50 + i,
          descricao: 'produto $i',
          prcUnit: 10.0 + i,
        ),
      );
    }
  }

  final _mesa = ''.obs;
  set mesa(value) => this._mesa.value = value;
  get mesa => this._mesa.value;

  RxList<Item> itensRegistrados = <Item>[].obs;
}
