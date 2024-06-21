import 'package:doc_app/features/sign_up/ui/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SignUpBody(),
      ),
    );
  }
}
