import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../core/app theme/font_style.dart';
import '../../../core/controller/auth/signup_verify_controller.dart';

class SignupVerify extends StatelessWidget {
  const SignupVerify({super.key});

  @override
  Widget build(BuildContext context) {
    SignupVerifyControllerImpl controller =
        Get.put(SignupVerifyControllerImpl());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              controller.back();
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          title: Text('43'.tr),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              '32'.tr,
              style: FontStyles.font16,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            OtpTextField(
              margin: const EdgeInsets.only(right: 10),
              contentPadding: const EdgeInsets.symmetric(vertical: 25),
              textStyle: FontStyles.font18,
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Colors.deepPurple,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                controller.verify();
              }, // end onSubmit
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
