import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:e_commerce/core/constants/custom_button.dart';
import 'package:e_commerce/core/constants/custom_form_field.dart';
import 'package:e_commerce/core/functions/validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/controller/auth/reset_password_controller.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller =
        Get.put(ResetPasswordControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              controller.back();
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          title: Text('33'.tr),
        ),
        body: Form(
          key: controller.formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            physics: const BouncingScrollPhysics(),
            children: [
              Text(
                '34'.tr,
                style: FontStyles.font20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 70),
              GetBuilder<ResetPasswordControllerImpl>(
                builder: (controller) => CustomFormField(
                  validator: (val) {
                    return appValidator(val!, 'password', 8, 100);
                  },
                  onIconTap: () {
                    controller.showPassword();
                  },
                  obscureText: controller.obscure,
                  suffix: controller.suffix,
                  controller: controller.password,
                  labelText: '35'.tr,
                  hintText: '36'.tr,
                ),
              ),
              GetBuilder<ResetPasswordControllerImpl>(
                builder: (controller) => CustomFormField(
                  validator: (val) {
                    return appValidator(val!, 'password', 8, 100);
                  },
                  onIconTap: () {
                    controller.showPassword();
                  },
                  obscureText: controller.obscure,
                  suffix: controller.suffix,
                  controller: controller.passwordConfirm,
                  labelText: '37'.tr,
                  hintText: '38'.tr,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  controller.resetPassword();
                },
                buttonText: '39'.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
