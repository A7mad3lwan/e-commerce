import 'package:e_commerce/core/app%20router/app_routes.dart';
import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:e_commerce/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 750));
    slidingText = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();

    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offAllNamed(AppRoutes.chooseLanguage),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                Assets.logo,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 15),
            AnimatedBuilder(
              animation: animationController,
              builder: (context, child) => SlideTransition(
                position: slidingText,
                child: const Text(
                  'welcome to e-commerce app',
                  style: FontStyles.font18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
