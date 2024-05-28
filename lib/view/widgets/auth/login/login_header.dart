import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app theme/font_style.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

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
          '13'.tr,
          style: FontStyles.font16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}
