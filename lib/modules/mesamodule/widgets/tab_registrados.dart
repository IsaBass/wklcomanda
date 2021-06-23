import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../mesa_controller.dart';
import 'item_tile_widget.dart';

class TabRegistrados extends StatelessWidget {
  TabRegistrados({Key? key}) : super(key: key);

  final MesaController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Obx(() => !(_controller.itensRegistrados.length > 0)
            ? Center(child: Text("Sem Produtos"))
            : ListView.builder(
                itemCount: _controller.itensRegistrados.length,
                itemBuilder: (context, idx) {
                  return ItemTile(item: _controller.itensRegistrados[idx]);
                })),
      ),
    );
  }
}
