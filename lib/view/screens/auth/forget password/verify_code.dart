import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          title: Text('31'.tr),
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
            const SizedBox(height: 15),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Colors.deepPurple,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
