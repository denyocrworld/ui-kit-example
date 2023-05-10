import '../preferable_selected_screen/widgets/gridshape3_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PreferableSelectedScreen extends StatelessWidget {
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
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 24, right: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                            svgPath:
                                                ImageConstant.imgArrowleft)),
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
                                  ]))),
                      Container(
                          width: getHorizontalSize(277),
                          margin: getMargin(left: 24, top: 55, right: 74),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Select your preferable\n",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "real estate type 🏡",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(left: 24, top: 22),
                          child: Text(
                              "You can edit this later on your account setting.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.36)))),
                      Container(
                          height: getVerticalSize(656),
                          width: double.maxFinite,
                          margin: getMargin(top: 51),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 24, right: 24),
                                        child: GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(213),
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(7),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(7)),
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: 6,
                                            itemBuilder: (context, index) {
                                              return Gridshape3ItemWidget();
                                            }))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(bottom: 139),
                                        padding: getPadding(
                                            left: 23,
                                            top: 24,
                                            right: 23,
                                            bottom: 24),
                                        decoration: AppDecoration
                                            .gradientWhiteA700WhiteA70000,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imageNotFound,
                                                  height: getVerticalSize(1),
                                                  width: getHorizontalSize(100),
                                                  margin: getMargin(top: 39)),
                                              CustomButton(
                                                  height: getVerticalSize(70),
                                                  text: "Next",
                                                  margin: getMargin(top: 11),
                                                  onTap: () {
                                                    onTapNext(context);
                                                  })
                                            ])))
                              ]))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentEmptyScreen);
  }
}
