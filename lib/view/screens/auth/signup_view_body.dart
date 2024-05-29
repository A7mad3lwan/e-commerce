import 'package:e_commerce/core/constants/custom_form_field.dart';
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
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      physics: const BouncingScrollPhysics(),
      children: [
        const SignupHeader(),
        CustomFormField(
          validator: (val) {
            return appValidator(val!, 'username', 2, 100);
          },
          labelText: '23'.tr,
          hintText: '24'.tr,
          suffix: FontAwesomeIcons.user,
        ),
        CustomFormField(
          validator: (val) {
            return appValidator(val!, 'phone', 10, 100);
          },
          keyboardType: TextInputType.phone,
          labelText: '25'.tr,
          hintText: '26'.tr,
          suffix: FontAwesomeIcons.phone,
        ),
        CustomFormField(
          validator: (val) {
            return appValidator(val!, 'email', 10, 100);
          },
          labelText: '14'.tr,
          hintText: '15'.tr,
          suffix: FontAwesomeIcons.envelope,
        ),
        CustomFormField(
          validator: (val) {
            return appValidator(val!, 'password', 2, 8);
          },
          labelText: '16'.tr,
          hintText: '17'.tr,
          suffix: FontAwesomeIcons.eye,
        ),
        const SignupBottom(),
      ],
    );
  }
}
