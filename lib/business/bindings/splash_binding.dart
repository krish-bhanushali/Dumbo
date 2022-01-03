import 'package:dumbo/business/controllers/are_you_dumb_controller.dart';
import 'package:dumbo/business/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SplashScreenController(), permanent: true);
    Get.put(AreYouDumbController(), permanent: true);
  }
}
