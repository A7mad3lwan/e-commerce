import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class ResetPasswordController extends GetxController {
  back();

  resetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController emailConfirm;

  @override
  void onInit() {
    email = TextEditingController();
    emailConfirm = TextEditingController();
    super.onInit();
  }

  @override
  back() {
    Get.offAllNamed(AppRoutes.forgetPassword);
  }

  @override
  resetPassword() {}

  @override
  void dispose() {
    email.dispose();
    emailConfirm.dispose();
    super.dispose();
  }
}
