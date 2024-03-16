import 'package:doc_app/core/helpers/extentions.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 53),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}
