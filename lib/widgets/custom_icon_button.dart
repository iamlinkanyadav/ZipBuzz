import 'package:flutter/material.dart';
import 'package:zipbuzzz/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(8.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillAmberA => BoxDecoration(
        color: appTheme.amberA400.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink50026.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA20026,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPinkTL20 => BoxDecoration(
        color: appTheme.pink50026,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillWhiteATL81 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray500.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.h),
      );
}
