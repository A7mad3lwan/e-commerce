import 'package:e_commerce/core/constants/custom_form_field.dart';
import 'package:e_commerce/core/controller/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../widgets/auth/login/login_bottom.dart';
import '../../widgets/auth/login/login_header.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return Form(
      key: controller.formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              const LoginHeader(),
              CustomFormField(
                controller: controller.email,
                labelText: '14'.tr,
                hintText: '15'.tr,
                suffix: FontAwesomeIcons.envelope,
              ),
              GetBuilder<LoginControllerImpl>(
                builder: (controller) => CustomFormField(
                  onIconTap: () {
                    controller.showPassword();
                  },
                  controller: controller.password,
                  obscureText: controller.obscureText,
                  labelText: '16'.tr,
                  hintText: '17'.tr,
                  suffix: controller.suffixIcon,
                ),
              ),
              const LoginBottom(),
            ],
          ),
        ],
      ),
    );
  }
}
