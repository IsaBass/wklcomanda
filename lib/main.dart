import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/modules/mesamodule/mesa_page.dart';

import 'modules/home/home_controller.dart';
import 'modules/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WKL.Comanda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        //   GetPage(name: '/login', page: () => Login()),
        GetPage(
          name: '/mesa',
          page: () => MesaPage(),
          binding: MesaBinding(),
          transition: Transition.cupertino,
        ),
      ],
      initialBinding: InitialBinding(),
    );
  }
}

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
