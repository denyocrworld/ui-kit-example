import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PaymentEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 13, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    variant: IconButtonVariant.FillGray100,
                                    shape: IconButtonShape.CircleBorder25,
                                    padding: IconButtonPadding.PaddingAll16,
                                    onTap: () {
                                      onTapBtnArrowleft(context);
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                CustomButton(
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(66),
                                    text: "skip",
                                    margin: getMargin(top: 7, bottom: 5),
                                    variant: ButtonVariant.FillGray100,
                                    shape: ButtonShape.CircleBorder19,
                                    padding: ButtonPadding.PaddingAll10,
                                    fontStyle: ButtonFontStyle
                                        .MontserratRegular12Bluegray800,
                                    onTap: () {
                                      onTapSkip(context);
                                    })
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(251),
                              margin: getMargin(left: 24, top: 55),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Add your \n",
                                        style: TextStyle(
                                            color: ColorConstant.blueGray80001,
                                            fontSize: getFontSize(25),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing:
                                                getHorizontalSize(0.75))),
                                    TextSpan(
                                        text: "payment method 💸",
                                        style: TextStyle(
                                            color: ColorConstant.blueGray80001,
                                            fontSize: getFontSize(25),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w800,
                                            letterSpacing:
                                                getHorizontalSize(0.75)))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 22),
                              child: Text(
                                  "You can edit this later on your account setting.",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRegular12.copyWith(
                                      letterSpacing:
                                          getHorizontalSize(0.36))))),
                      Container(
                          margin: getMargin(left: 24, top: 51, right: 24),
                          decoration: AppDecoration.fillBluegray80001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder25),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(left: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 23),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Your name",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRalewayRomanBold12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.36))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 42),
                                                            child: Text(
                                                                "----   ----   ----   ----",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold18))
                                                      ])),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgSubtractWhiteA700,
                                                  height: getVerticalSize(97),
                                                  width: getHorizontalSize(130),
                                                  margin: getMargin(bottom: 6))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 24,
                                        top: 23,
                                        right: 24,
                                        bottom: 23),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("Balance",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewayRomanSemiBold8
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.24))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "  ",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700,
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.36))),
                                                                  TextSpan(
                                                                      text:
                                                                          "------",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .whiteA700,
                                                                          fontSize: getFontSize(
                                                                              12),
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontWeight:
                                                                              FontWeight.w700))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left)))
                                              ]),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgIconwallet,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(top: 9))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 24, top: 15),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Container(
                                        width: getHorizontalSize(112),
                                        padding: getPadding(
                                            left: 25,
                                            top: 15,
                                            right: 25,
                                            bottom: 15),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgReply20x20,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 5,
                                                      bottom: 2),
                                                  child: Text("Paypal",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium10Bluegray600
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.3))))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(134),
                                        margin: getMargin(left: 10),
                                        padding: getPadding(
                                            left: 24,
                                            top: 18,
                                            right: 24,
                                            bottom: 18),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVolume11x20,
                                                  height: getVerticalSize(11),
                                                  width: getHorizontalSize(20)),
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Text("MasterCard",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium10Bluegray600
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.3))))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(102),
                                        margin: getMargin(left: 10),
                                        padding: getPadding(
                                            left: 25,
                                            top: 15,
                                            right: 25,
                                            bottom: 15),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgUser1,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 4,
                                                      bottom: 3),
                                                  child: Text("Visa",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium10Bluegray600
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.3))))
                                            ]))
                                  ])))),
                      Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(1),
                          width: getHorizontalSize(100))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Next",
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapNext(context);
                })));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentPaypalTabContainerScreen);
  }
}
