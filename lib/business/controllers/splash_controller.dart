import 'package:dumbo/ui/values/routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async {
    // TODO: implement onInit

    await Future.delayed(const Duration(seconds: 2));
    Get.toNamed(RouteNameConstants.HOME_SCREEN);

    super.onInit();
  }
}
