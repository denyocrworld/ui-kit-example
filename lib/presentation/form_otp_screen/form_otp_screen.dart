import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FormOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          margin: getMargin(top: 1),
                          variant: IconButtonVariant.FillGray100,
                          shape: IconButtonShape.CircleBorder25,
                          padding: IconButtonPadding.PaddingAll16,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Container(
                          width: getHorizontalSize(248),
                          margin: getMargin(top: 54, right: 79),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Enter the \n",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "verification code 🔒 ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Container(
                          width: getHorizontalSize(248),
                          margin: getMargin(top: 25, right: 78),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Enter thpe 4 digit code that we just sent to \n",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray600,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing:
                                            getHorizontalSize(0.36))),
                                TextSpan(
                                    text: "user",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(0.36))),
                                TextSpan(
                                    text: "@",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing:
                                            getHorizontalSize(0.36))),
                                TextSpan(
                                    text: "email.com",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(0.36)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 50),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(70),
                                  fieldWidth: getHorizontalSize(74),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(25)),
                                  selectedFillColor: ColorConstant.gray100,
                                  activeFillColor: ColorConstant.gray100,
                                  inactiveFillColor: ColorConstant.gray100,
                                  inactiveColor: ColorConstant.indigoA400,
                                  selectedColor: ColorConstant.indigoA400,
                                  activeColor: ColorConstant.indigoA400))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(90),
                          text: "00.21",
                          variant: ButtonVariant.FillGray100,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle:
                              ButtonFontStyle.MontserratMedium12Bluegray80001,
                          prefixWidget: Container(
                              margin: getMargin(right: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClock)),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 22),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Didn’t receive the OTP?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.36))),
                                    Padding(
                                        padding: getPadding(left: 4),
                                        child: Text("Resend OTP",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayBold12IndigoA400
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.36))))
                                  ])))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Submit",
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapSubmit(context);
                })));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationEmptyScreen);
  }
}
