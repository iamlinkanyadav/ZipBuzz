import 'package:flutter/material.dart';
import 'package:zipbuzzz/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Opacity(
          opacity: 0.5,
          child: Text(
            text,
            style: CustomTextStyles.bodySmallWhiteA700_2.copyWith(
              color: appTheme.whiteA700.withOpacity(0.53),
            ),
          ),
        ),
      ),
    );
  }
}
