import 'package:doc_app/features/onboarding/widgets/onboarding_screen_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardingScreenBody(),
      ),
    );
  }
}
