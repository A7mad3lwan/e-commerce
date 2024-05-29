import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  resetPassword();

  back();
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  @override
  back() {
    Get.offAllNamed(AppRoutes.forgetPassword);
  }

  @override
  resetPassword() {}
}
