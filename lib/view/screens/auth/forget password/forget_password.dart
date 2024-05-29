import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:e_commerce/core/constants/custom_button.dart';
import 'package:e_commerce/core/constants/custom_form_field.dart';
import 'package:e_commerce/core/controller/auth/forget_password_controller.dart';
import 'package:e_commerce/core/functions/validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller =
        Get.put(ForgetPasswordControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              controller.back();
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          title: Text('18'.tr),
        ),
        body: Form(
          key: controller.formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
            physics: const BouncingScrollPhysics(),
            children: [
              Text(
                '28'.tr,
                style: FontStyles.font20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Text(
                '29'.tr,
                style: FontStyles.font16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 55),
              CustomFormField(
                validator: (val) {
                  return appValidator(val!, 'email', 10, 100);
                },
                controller: controller.email,
                suffix: FontAwesomeIcons.envelope,
                labelText: '14'.tr,
                hintText: '15'.tr,
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  controller.check();
                },
                buttonText: '30'.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
