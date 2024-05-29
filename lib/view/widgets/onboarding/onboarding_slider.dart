import 'package:e_commerce/core/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/app theme/font_style.dart';
import '../../../data/data source/statics.dart';

class OnboardingSlider extends GetView<OnboardingControllerImpl> {
  const OnboardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 0.8,
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.onPageChanged(index);
        },
        physics: const BouncingScrollPhysics(),
        itemCount: onboardingList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Text(
              onboardingList[index].title!,
              style: FontStyles.font20,
            ),
            const SizedBox(height: 70),
            Expanded(
              child: AspectRatio(
                aspectRatio: 3.7 / 4,
                child: SizedBox(
                  child: Image.asset(
                    onboardingList[index].image!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Text(
              onboardingList[index].body!,
              style: FontStyles.font18.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
