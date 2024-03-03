import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.contentPadding,
    this.hintStyle,
    this.validator,
    this.controller,
  });
  final String? hintText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: const TextStyle(
        color: AppColors.kWhite,
      ),
      decoration: InputDecoration(
        focusColor: AppColors.kDarkPrimary,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: AppColors.kDarkPrimary,
            )),
        hintText: hintText,
        hintStyle: hintStyle,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 13),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: AppColors.kDarkPrimary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: AppColors.kDarkPrimary,
          ),
        ),
      ),
    );
  }
}
