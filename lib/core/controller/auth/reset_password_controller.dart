import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class ResetPasswordController extends GetxController {
  back();

  resetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController passwordConfirm;

  bool? obscure = true;
  IconData suffix = FontAwesomeIcons.eye;

  showPassword() {
    if (obscure = obscure == true) {
      obscure = false;
      suffix = FontAwesomeIcons.eyeSlash;
      update();
    } else {
      obscure = true;
      suffix = FontAwesomeIcons.eye;
      update();
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    passwordConfirm = TextEditingController();
    super.onInit();
  }

  @override
  back() {
    Get.offAllNamed(AppRoutes.forgetPassword);
  }

  @override
  resetPassword() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      Get.offAllNamed(AppRoutes.successResetPassword);
    }
  }

  @override
  void dispose() {
    password.dispose();
    passwordConfirm.dispose();
    super.dispose();
  }
}
