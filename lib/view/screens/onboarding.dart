import 'package:e_commerce/core/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/onboarding/onboarding_body.dart';

class Onboarding extends GetView<OnboardingControllerImpl> {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnboardingBody(),
      ),
    );
  }
}
