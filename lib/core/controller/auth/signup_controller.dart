import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();

  toLogin();
}

class SignupControllerImpl extends SignupController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;

  bool? obscure = true;
  IconData suffixIcon = FontAwesomeIcons.eye;

  showPassword() {
    if (obscure = obscure == true) {
      obscure = false;
      suffixIcon = FontAwesomeIcons.eyeSlash;
      update();
    } else {
      obscure = true;
      suffixIcon = FontAwesomeIcons.eye;
      update();
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  signup() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      if (kDebugMode) {
        print('valid data!');
      }
      Get.offAllNamed(AppRoutes.signupVerify);
    } else {
      if (kDebugMode) {
        print('valid data!');
      }
    }
  }

  @override
  toLogin() {
    Get.offAllNamed(AppRoutes.login);
  }

  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
