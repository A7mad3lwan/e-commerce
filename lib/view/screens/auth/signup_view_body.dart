import 'package:e_commerce/core/constants/custom_form_field.dart';
import 'package:e_commerce/core/controller/auth/signup_controller.dart';
import 'package:e_commerce/core/functions/validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../widgets/auth/signup/signup_bottom.dart';
import '../../widgets/auth/signup/signup_header.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImpl controller = Get.put(SignupControllerImpl());
    return Form(
      key: controller.formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          const SignupHeader(),
          CustomFormField(
            validator: (val) {
              return appValidator(val!, 'username', 2, 100);
            },
            controller: controller.username,
            labelText: '23'.tr,
            hintText: '24'.tr,
            suffix: FontAwesomeIcons.user,
          ),
          CustomFormField(
            validator: (val) {
              return appValidator(val!, 'phone', 10, 100);
            },
            controller: controller.phone,
            keyboardType: TextInputType.phone,
            labelText: '25'.tr,
            hintText: '26'.tr,
            suffix: FontAwesomeIcons.phone,
          ),
          CustomFormField(
            validator: (val) {
              return appValidator(val!, 'email', 10, 100);
            },
            controller: controller.email,
            labelText: '14'.tr,
            hintText: '15'.tr,
            suffix: FontAwesomeIcons.envelope,
          ),
          GetBuilder<SignupControllerImpl>(
            builder: (controller) => CustomFormField(
              onIconTap: () {
                controller.showPassword();
              },
              validator: (val) {
                return appValidator(val!, 'password', 8, 100);
              },
              controller: controller.password,
              obscureText: controller.obscure,
              labelText: '16'.tr,
              hintText: '17'.tr,
              suffix: controller.suffixIcon,
            ),
          ),
          const SignupBottom(),
        ],
      ),
    );
  }
}
