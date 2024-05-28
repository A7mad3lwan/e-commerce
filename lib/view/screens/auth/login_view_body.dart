import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 35),
        physics: const BouncingScrollPhysics(),
        children: const [
          Column(),
        ],
      ),
    );
  }
}
