import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:e_commerce/view/screens/auth/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/controller/auth/login_controller.dart';

class LoginView extends GetView<LoginControllerImpl> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '11'.tr,
            style: FontStyles.font18.copyWith(color: Colors.grey),
          ),
        ),
        body: const LoginViewBody(),
      ),
    );
  }
}
