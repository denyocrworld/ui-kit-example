import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RegisterFormEmptyScreen extends StatelessWidget {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Padding(
                          padding: getPadding(top: 55),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Create your ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "account 👇",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Text(
                              "quis nostrud exercitation ullamco laboris nisi ut",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.36)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: fullnameController,
                          hintText: "Full name",
                          margin: getMargin(top: 51),
                          padding: TextFormFieldPadding.PaddingT26,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 25, right: 10, bottom: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                          getHorizontalSize(50)),
                                      bottomRight: Radius.circular(
                                          getHorizontalSize(50)))),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser20x20)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "Email",
                          margin: getMargin(top: 15),
                          padding: TextFormFieldPadding.PaddingT26,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 25, right: 10, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordController,
                          hintText: "Password",
                          margin: getMargin(top: 15),
                          padding: TextFormFieldPadding.PaddingT26,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 25, right: 10, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70)),
                          isObscureText: true),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 13),
                              child: Text("Show password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRalewayRomanSemiBold12Bluegray80001
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.36))))),
                      CustomButton(
                          height: getVerticalSize(70),
                          text: "Register",
                          margin: getMargin(top: 36),
                          onTap: () {
                            onTapRegister(context);
                          }),
                      Container(
                          height: getVerticalSize(22),
                          width: getHorizontalSize(327),
                          margin: getMargin(top: 20),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: getPadding(bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(327),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray50)))),
                            CustomButton(
                                height: getVerticalSize(22),
                                width: getHorizontalSize(35),
                                text: "OR",
                                variant: ButtonVariant.FillWhiteA700,
                                shape: ButtonShape.Square,
                                padding: ButtonPadding.PaddingAll5,
                                fontStyle:
                                    ButtonFontStyle.RalewaySemiBold10Indigo200,
                                alignment: Alignment.center)
                          ])),
                      Padding(
                          padding: getPadding(top: 20, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray100,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder25),
                                    child: Container(
                                        height: getVerticalSize(70),
                                        width: getHorizontalSize(158),
                                        padding:
                                            getPadding(top: 22, bottom: 22),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGoogle,
                                              height: getSize(25),
                                              width: getSize(25),
                                              alignment: Alignment.topCenter)
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray100,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder25),
                                    child: Container(
                                        height: getVerticalSize(70),
                                        width: getHorizontalSize(158),
                                        padding:
                                            getPadding(top: 22, bottom: 22),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder25),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFacebook,
                                              height: getSize(25),
                                              width: getSize(25),
                                              alignment: Alignment.topCenter)
                                        ])))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 77, right: 78, bottom: 24),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Already have an account?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRegular14
                          .copyWith(letterSpacing: getHorizontalSize(0.42))),
                  GestureDetector(
                      onTap: () {
                        onTapTxtRegisterOne(context);
                      },
                      child: Padding(
                          padding: getPadding(left: 4),
                          child: Text("Login",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayBold14IndigoA400
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.42)))))
                ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formOtpScreen);
  }

  onTapTxtRegisterOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
