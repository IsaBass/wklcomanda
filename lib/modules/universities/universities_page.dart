import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'university_controller.dart';

class UniversitiesPage extends GetView<UniversityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UniversitiesPage'),
      ),
      body: Obx(() {
        if (controller.univerities.isEmpty)
          return Container(
              child: Center(
            child: Text('Sem Dados para exibir'),
          ));

        return Container(
          child: ListView.builder(
              itemCount: controller.univerities.length,
              itemBuilder: (_, index) {
                return Text(controller.univerities[index].name);
              }),
        );
      }),
    );
  }
}
