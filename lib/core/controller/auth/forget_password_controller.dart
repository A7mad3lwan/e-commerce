import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  check();

  back();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  back() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  check() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      Get.offAllNamed(AppRoutes.verifyCode);
    }
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
