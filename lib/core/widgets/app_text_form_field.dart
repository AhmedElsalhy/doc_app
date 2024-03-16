import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPading;
  final Color? fillColor;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  const AppTextFormField({
    super.key,
    this.contentPading,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.font14DarkBlueMedium,
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? ColorManager.lightWhite,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintTextStyle ?? TextStyles.font14LightGrayRegular,
        isDense: true,
        contentPadding: contentPading ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorManager.mainBlue,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorManager.lighterGray,
                width: 1.3,
              ),
            ),
      ),
    );
  }
}
