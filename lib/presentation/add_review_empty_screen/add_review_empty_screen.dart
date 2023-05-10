import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class AddReviewEmptyScreen extends StatelessWidget {
  TextEditingController formTextareaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 3, bottom: 3),
                    onTap: () {
                      onTapArrowleft20(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Add Review")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 51, right: 24, bottom: 51),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(303),
                          margin: getMargin(right: 24),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Hi, how was your ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "overall\nexperience? 👋",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lorem ipsum dolor sit amet",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.36)))),
                      Padding(
                          padding: getPadding(top: 51, right: 41),
                          child: Row(children: [
                            RatingBar.builder(
                                initialRating: 0,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemSize: getVerticalSize(40),
                                itemCount: 5,
                                updateOnDrag: true,
                                onRatingUpdate: (rating) {},
                                itemBuilder: (context, _) {
                                  return Icon(Icons.star);
                                }),
                            Padding(
                                padding:
                                    getPadding(left: 15, top: 4, bottom: 4),
                                child: Text("0.0",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratExtraBold25
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.75))))
                          ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: formTextareaController,
                          hintText: "Write your experience in here (optional)",
                          margin: getMargin(top: 20),
                          padding: TextFormFieldPadding.PaddingT52,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 6, right: 6, bottom: 6),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.gray400,
                                      width: getHorizontalSize(1),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSignal)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(120)),
                          maxLines: 7),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 15, bottom: 5),
                          color: ColorConstant.gray100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder25),
                          child: Container(
                              height: getSize(78),
                              width: getSize(78),
                              padding: getPadding(all: 29),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder25),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlus,
                                    height: getSize(20),
                                    width: getSize(20),
                                    alignment: Alignment.center)
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

  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addReviewFillScreen);
  }

  onTapArrowleft20(BuildContext context) {
    Navigator.pop(context);
  }
}
