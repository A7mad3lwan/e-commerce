import 'package:e_commerce/core/controller/auth/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app theme/font_style.dart';

class SignupHeader extends GetView<SignupControllerImpl> {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '12'.tr,
          style: FontStyles.font20,
        ),
        const SizedBox(height: 30),
        Text(
          '22'.tr,
          textAlign: TextAlign.center,
          style: FontStyles.font16,
        ),
        const SizedBox(height: 45),
      ],
    );
  }
}
