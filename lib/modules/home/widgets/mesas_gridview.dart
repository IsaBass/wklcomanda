import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/modules/home/home_controller.dart';

class MesasGridView extends StatelessWidget {
  MesasGridView({Key? key}) : super(key: key);

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => GridView.builder(
          itemCount: _homeController.qtdMesas.value,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return LayoutBuilder(builder: (context, constraint) {
              return Container(
                // margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                color: Colors.blueGrey[200],
                child: Text(
                  "Mesa $index" + '\n' + constraint.maxWidth.toStringAsFixed(2),
                ),
              );
            });
          },
        ));
  }
}
