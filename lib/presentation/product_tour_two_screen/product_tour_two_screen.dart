import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProductTourTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 24, right: 44),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorIndigoA400,
                                    height: getVerticalSize(64),
                                    width: getHorizontalSize(87)),
                                CustomButton(
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(66),
                                    text: "skip",
                                    margin: getMargin(top: 13, bottom: 13),
                                    variant: ButtonVariant.FillGray100,
                                    shape: ButtonShape.CircleBorder19,
                                    padding: ButtonPadding.PaddingAll10,
                                    fontStyle: ButtonFontStyle
                                        .MontserratRegular12Bluegray800,
                                    onTap: () {
                                      onTapSkip(context);
                                    })
                              ])),
                      Container(
                          width: getHorizontalSize(277),
                          margin: getMargin(left: 24, top: 40, right: 74),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Fast sell your property\nin just ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "one click 😎",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Container(
                          width: getHorizontalSize(238),
                          margin: getMargin(left: 24, top: 22),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.36)))),
                      Container(
                          height: getVerticalSize(520),
                          width: double.maxFinite,
                          margin: getMargin(top: 28),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgBackgroundillustration520x3752,
                                    height: getVerticalSize(520),
                                    width: getHorizontalSize(375),
                                    alignment: Alignment.center),
                                CustomButton(
                                    height: getVerticalSize(70),
                                    width: getHorizontalSize(230),
                                    text: "Next",
                                    margin: getMargin(bottom: 24),
                                    onTap: () {
                                      onTapNext(context);
                                    },
                                    alignment: Alignment.bottomCenter)
                              ]))
                    ]))));
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productTourThreeScreen);
  }
}
