import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:e_commerce/core/controller/auth/signup_controller.dart';
import 'package:e_commerce/view/screens/auth/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupControllerImpl> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              controller.toLogin();
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          title: Text(
            '21'.tr,
            style: FontStyles.font20,
          ),
        ),
        body: const SignupViewBody(),
      ),
    );
  }
}
