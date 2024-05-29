import 'package:get/get.dart';

import '../../app router/app_routes.dart';

abstract class SignupVerifyController extends GetxController {
  verify();

  back();
}

class SignupVerifyControllerImpl extends SignupVerifyController {
  @override
  back() {
    Get.offAllNamed(AppRoutes.signup);
  }

  @override
  verify() {
    Get.offAllNamed(AppRoutes.signupSuccess);
  }
}