import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wklcomanda/modules/mesamodule/mesa_page.dart';
import 'package:wklcomanda/modules/universities/university_module.dart';
import 'package:wklcomanda/shared/app_routes.dart';

import 'modules/home/home_controller.dart';
import 'modules/home/homepage.dart';
import 'modules/mesamodule/mesa_binding.dart';
import 'services/dio_service.dart';
import 'services/getconnect_service.dart';
import 'services/i_rest_service.dart';

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
      initialRoute: AppRoutes.home,
      getPages: [
        GetPage(
          name: AppRoutes.home,
          page: () => HomePage(),
          children: [
            GetPage(
              name: AppRoutes.home_mesa_child,
              page: () => MesaPage(),
              binding: MesaBinding(),
              transition: Transition.cupertino,
            ),
          ],
        ),
        UniversityModule(),
        //   GetPage(name: '/login', page: () => Login()),
      ],
      initialBinding: InitialBinding(),
    );
  }
}

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<IRestService>(RestGetConnect());
    Get.put<HomeController>(HomeController());
  }
}
