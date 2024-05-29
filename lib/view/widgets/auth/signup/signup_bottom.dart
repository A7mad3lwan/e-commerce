import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app theme/font_style.dart';
import '../../../../core/constants/custom_button.dart';

class SignupBottom extends StatelessWidget {
  const SignupBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomButton(
            onPressed: () {},
            buttonText: '21'.tr,
          ),
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '27'.tr,
              style: FontStyles.font16,
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: Text(
                '11'.tr,
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
