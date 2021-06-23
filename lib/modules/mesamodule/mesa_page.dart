import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mesa_controller.dart';
import 'mesa_repository.dart';
import 'widgets/tab_naoregistrados.dart';
import 'widgets/tab_registrados.dart';

class MesaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MesaController>(() => MesaController(
          MesaRepository(),
          mesa: Get.arguments['mesa']!,
        ));
  }
}

class MesaPage extends StatefulWidget {
  @override
  _MesaPageState createState() => _MesaPageState();
}

class _MesaPageState extends State<MesaPage>
    with SingleTickerProviderStateMixin {
  final MesaController _controller = Get.find<MesaController>();

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Enviados'),
    Tab(
      // icon: Icon(
      //   Icons.add_alert_outlined,
      //   color: Colors.red,
      // ),
      iconMargin: EdgeInsets.all(2),
      text: 'Não Registrados',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(_controller.mesa)),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TabRegistrados(),
          TabNaoRegistrados(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text("Adicionar"),
        tooltip: "Adicionar novo produto",
      ),
    );
  }
}
