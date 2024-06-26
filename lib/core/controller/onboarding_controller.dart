import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:e_commerce/core/services/app_services.dart';
import 'package:e_commerce/data/data%20source/statics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();

  onPageChanged(int index);
}

class OnboardingControllerImpl extends OnboardingController {
  AppServices appServices = Get.find();
  late PageController pageController;
  int currentIndex = 0;

  @override
  next() {
    currentIndex++;
    if (currentIndex > onboardingList.length - 1) {
      appServices.sharedPreferences.setBool('login', true);
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 750),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
