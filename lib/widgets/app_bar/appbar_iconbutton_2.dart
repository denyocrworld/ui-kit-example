import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarIconbutton2 extends StatelessWidget {
  AppbarIconbutton2({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 50,
          width: 50,
          variant: IconButtonVariant.FillGray100,
          shape: IconButtonShape.CircleBorder25,
          padding: IconButtonPadding.PaddingAll16,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
