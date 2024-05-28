import 'package:e_commerce/core/app%20theme/font_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    this.onPressed,
  });

  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepPurple,
      ),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: FontStyles.font18,
        ),
      ),
    );
  }
}
