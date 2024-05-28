import 'package:flutter/material.dart';

import '../../../data/data source/statics.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onboardingList.length,
              (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 750),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 9,
            width: 8,
          ),
        )
      ],
    );
  }
}
