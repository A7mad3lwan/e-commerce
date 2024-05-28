import 'package:flutter/material.dart';

import '../../../core/app theme/font_style.dart';
import '../../../data/data source/statics.dart';

class OnboardingSlider extends StatelessWidget {
  const OnboardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 0.7,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: onboardingList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Text(
              onboardingList[index].title!,
              style: FontStyles.font20,
            ),
            const SizedBox(height: 70),
            Expanded(
              child: AspectRatio(
                aspectRatio: 3.7 / 4,
                child: SizedBox(
                  child: Image.asset(
                    onboardingList[index].image!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Text(
              onboardingList[index].body!,
              style: FontStyles.font18.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
