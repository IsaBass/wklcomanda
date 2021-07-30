import 'package:get/route_manager.dart';
import 'package:wklcomanda/modules/universities/universities_page.dart';
import 'package:wklcomanda/modules/universities/university_bindings.dart';
import 'package:wklcomanda/shared/app_routes.dart';

class UniversityModule extends GetPage {
  UniversityModule()
      : super(
          name: AppRoutes.universities,
          page: () => UniversitiesPage(),
          binding: UniversityBindings(),
        );
}
