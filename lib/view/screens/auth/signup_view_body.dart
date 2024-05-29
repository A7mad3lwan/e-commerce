import 'package:e_commerce/core/constants/custom_form_field.dart';
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
          labelText: '23'.tr,
          hintText: '24'.tr,
          suffix: FontAwesomeIcons.user,
        ),
        CustomFormField(
          labelText: '25'.tr,
          hintText: '26'.tr,
          suffix: FontAwesomeIcons.phone,
        ),
        CustomFormField(
          labelText: '14'.tr,
          hintText: '15'.tr,
          suffix: FontAwesomeIcons.envelope,
        ),
        CustomFormField(
          labelText: '16'.tr,
          hintText: '17'.tr,
          suffix: FontAwesomeIcons.eye,
        ),
        const SignupBottom(),
      ],
    );
  }
}
