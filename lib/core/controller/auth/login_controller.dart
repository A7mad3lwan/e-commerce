import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();

  forgetPassword();

  toSignup();
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  bool? obscureText = true;
  IconData suffixIcon = FontAwesomeIcons.eye;

  showPassword() {
    if (obscureText = obscureText == true) {
      obscureText = false;
      suffixIcon = FontAwesomeIcons.eyeSlash;
      update();
    } else {
      obscureText = true;
      suffixIcon = FontAwesomeIcons.eye;
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  login() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      if (kDebugMode) {
        print('valid data!');
      }
    } else {
      if (kDebugMode) {
        print('not valid data!');
      }
    }
  }

  @override
  toSignup() {}

  @override
  forgetPassword() {}

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
