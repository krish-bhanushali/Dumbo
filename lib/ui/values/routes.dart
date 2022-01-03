import 'package:dumbo/business/bindings/splash_binding.dart';
import 'package:dumbo/ui/screens/are_you_dumb_screen.dart';
import 'package:dumbo/ui/screens/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(
        name: RouteNameConstants.SPLASH_SCREEN,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: RouteNameConstants.HOME_SCREEN,
      page: () => AreYouDumbScreen(),
    ),
  ];
}

class RouteNameConstants {
  // ignore: constant_identifier_names
  static const SPLASH_SCREEN = '/splash';

  // ignore: constant_identifier_names
  static const HOME_SCREEN = '/home';
}
