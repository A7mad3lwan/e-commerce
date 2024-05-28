import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app theme/font_style.dart';
import '../../../../core/constants/custom_button.dart';
import '../../../../core/controller/auth/login_controller.dart';

class LoginBottom extends GetView<LoginControllerImpl> {
  const LoginBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {
              controller.forgetPassword();
            },
            child: Text(
              '18'.tr,
              style: FontStyles.font16.copyWith(
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomButton(
            onPressed: () {
              controller.login();
            },
            buttonText: '19'.tr,
          ),
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '20'.tr,
              style: FontStyles.font16,
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                controller.toSignup();
              },
              child: Text(
                '21'.tr,
                style: FontStyles.font16.copyWith(
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
