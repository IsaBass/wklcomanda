import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/shared/models/university.dart';

import 'university_controller.dart';

class UniversitiesPage extends GetView<UniversityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UniversitiesPage'),
      ),
      body: controller.obx(
        (state) {
          return ListView.builder(
              itemCount: state!.length,
              itemBuilder: (_, index) {
                University univ = state[index];
                return Card(
                    shadowColor: Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(univ.name),
                          SizedBox(height: 3),
                          Text(
                            univ.domains.first,
                            style: TextStyle(
                              color: Colors.blue,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ));
              });
        },
        onLoading: Container(child: Center(child: CircularProgressIndicator())),
        onError: (err) => Container(child: Center(child: Text('Erro: $err'))),
        onEmpty: Container(child: Center(child: Text('Tudo vazio aqui'))),
      ),
    );
  }
}

/*
Obx(() {
        if (controller.univerities.isEmpty)
          return Container(
              child: Center(
            child: Text('Sem Dados para exibir'),
          ));

        return Container(
          child: ListView.builder(
              itemCount: controller.univerities.length,
              itemBuilder: (_, index) {
                return Card(
                    shadowColor: Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(controller.univerities[index].name),
                          SizedBox(height: 3),
                          Text(
                            controller.univerities[index].domains.first,
                            style: TextStyle(
                              color: Colors.blue,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ));
              }),
        );
      }),

*/
