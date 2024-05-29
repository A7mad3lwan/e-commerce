import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../core/app router/app_routes.dart';
import '../../../core/app theme/font_style.dart';
import '../../../core/constants/custom_button.dart';

class SignupSuccess extends StatelessWidget {
  const SignupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '40'.tr,
                style: FontStyles.font20,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              const Icon(
                FontAwesomeIcons.circleCheck,
                size: 200,
                color: Colors.deepPurple,
              ),
              const Spacer(),
              Text(
                '41'.tr,
                style: FontStyles.font20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Text(
                '44'.tr,
                style: FontStyles.font16.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomButton(
                onPressed: (){
                  Get.offAllNamed(AppRoutes.login);
                },
                buttonText: '19'.tr,
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
