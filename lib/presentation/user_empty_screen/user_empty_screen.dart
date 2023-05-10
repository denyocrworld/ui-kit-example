import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:deny_s_application5/presentation/user_success_bottomsheet/user_success_bottomsheet.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserEmptyScreen extends StatelessWidget {
  TextEditingController formTextFillController = TextEditingController();

  TextEditingController formTextEmptyController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 13),
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
                      Container(
                          width: getHorizontalSize(254),
                          margin: getMargin(top: 55, right: 72),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Fill your ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "information \nbelow👇 ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text(
                              "You can edit this later on your account setting.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.36)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(100),
                              margin: getMargin(top: 51),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder50),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgUser42x40,
                                        height: getVerticalSize(42),
                                        width: getHorizontalSize(40),
                                        margin: getMargin(top: 27)),
                                    CustomIconButton(
                                        height: 30,
                                        width: 30,
                                        variant:
                                            IconButtonVariant.FillBluegray80001,
                                        shape: IconButtonShape.RoundedBorder17,
                                        padding: IconButtonPadding.PaddingAll9,
                                        alignment: Alignment.centerRight,
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .img9ce8cff206464d90abe590abdd2875e0))
                                  ]))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: formTextFillController,
                          hintText: "Jonathan Anderson",
                          margin: getMargin(top: 30),
                          fontStyle: TextFormFieldFontStyle
                              .RalewaySemiBold12Bluegray80001,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 25, right: 16, bottom: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                          getHorizontalSize(50)),
                                      bottomRight: Radius.circular(
                                          getHorizontalSize(50)))),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser20x20)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: formTextEmptyController,
                          hintText: "mobile number",
                          margin: getMargin(top: 15),
                          padding: TextFormFieldPadding.PaddingT26,
                          textInputType: TextInputType.phone,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 25, right: 10, bottom: 25),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgTrashBlueGray80001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "user@email.com",
                          margin: getMargin(top: 15),
                          variant: TextFormFieldVariant.FillBluegray600,
                          fontStyle: TextFormFieldFontStyle
                              .RalewaySemiBold12Bluegray50_1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 25, right: 16, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMail1)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      CustomImageView(
                          imagePath: ImageConstant.imgProgressbargradient,
                          height: getVerticalSize(1),
                          width: getHorizontalSize(100),
                          alignment: Alignment.center,
                          margin: getMargin(top: 42))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Finish",
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapFinish(context);
                })));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  onTapFinish(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => UserSuccessBottomsheet(),
        isScrollControlled: true);
  }
}
