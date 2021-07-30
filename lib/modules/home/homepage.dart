import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/shared/app_routes.dart';

import 'home_controller.dart';
import 'widgets/menusup_home.dart';
import 'widgets/mesas_gridview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: //TriangRect(),

          Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 35,
            child: TextButton(
              child: Text('Universities'),
              onPressed: () => Get.toNamed(AppRoutes.universities),
            ),
          ),
          MenuSuperiorHome(),
          Expanded(
            child: Container(
              child: MesasGridView(),
              //ButtonAtualizar(),
            ),
          ),
          Container(
            width: double.maxFinite,
            color: Theme.of(context).primaryColor,
            alignment: Alignment.center,
            height: 40,
            child: Text("Menu Fixo Inferior"),
          ),
        ],
      ),
      // bottomSheet: _bottomSheet(),
    );
  }

  // Container _bottomSheet() {
  //   return Container(
  //     width: double.maxFinite,
  //     color: Colors.black87,
  //     child: Card(
  //       color: Colors.amber,
  //       child: Text(
  //         "bottomSheet",
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //   );
  // }

  AppBar _appBar() {
    return AppBar(
      title: Text("WKL Comanda"),
      // centerTitle: true,
      actions: [
        IconButton(
          onPressed: () => Get.find<HomeController>().qtdMesas.value++,
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () => Get.find<HomeController>().qtdMesas.value--,
          icon: Icon(Icons.remove_outlined),
        )
      ],
    );
  }
}
