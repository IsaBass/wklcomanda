import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/modules/home/home_controller.dart';

import 'triangrect.dart';

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
              return Card(
                shadowColor: Colors.green,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      TriangRect(color: Colors.green),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          constraint.maxWidth.toStringAsFixed(2),
                        ),
                      ),
                      Positioned(
                        //alignment: Alignment.center,
                        bottom: (constraint.maxHeight / 2) - 16,
                        right: (constraint.maxWidth / 2) - 16,
                        child: Text(
                          "$index",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
          },
        ));
  }
}
