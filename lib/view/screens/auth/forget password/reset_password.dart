import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          title: Text('33'.tr),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50 , horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [],
        ),
      ),
    );
  }
}
