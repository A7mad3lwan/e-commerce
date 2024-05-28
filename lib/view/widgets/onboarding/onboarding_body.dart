import 'package:e_commerce/core/constants/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/controller/onboarding_controller.dart';
import 'onboarding_dots.dart';
import 'onboarding_slider.dart';


class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingControllerImpl controller = Get.put(OnboardingControllerImpl());
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        const OnboardingSlider(),
        const SizedBox(height: 60),
        const OnboardingDots(),
        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: CustomButton(
            buttonText: '10'.tr,
            onPressed: () {
              controller.next();
            },
          ),
        ),
      ],
    );
  }
}
