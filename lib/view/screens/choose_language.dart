import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:e_commerce/core/constants/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  '1'.tr,
                  style: FontStyles.font20,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {},
                buttonText: 'En',
              ),
              const SizedBox(height: 5),
              CustomButton(
                onPressed: () {},
                buttonText: 'Ar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
