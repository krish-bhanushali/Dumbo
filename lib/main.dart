import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'ui/values/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DUMBO',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNameConstants.SPLASH_SCREEN,
      getPages: AppRoutes.routes,
    );
  }
}
