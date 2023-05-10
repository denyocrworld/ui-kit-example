import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 50,
                          width: 50,
                          margin: getMargin(left: 24, top: 24),
                          variant: IconButtonVariant.FillGray100,
                          shape: IconButtonShape.CircleBorder25,
                          padding: IconButtonPadding.PaddingAll16,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Text("Milano",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayBold25.copyWith(
                                  letterSpacing: getHorizontalSize(0.75)))),
                      CustomButton(
                          height: getVerticalSize(24),
                          width: getHorizontalSize(49),
                          text: "12.25",
                          margin: getMargin(top: 13),
                          variant: ButtonVariant.FillIndigo200,
                          shape: ButtonShape.CircleBorder12,
                          padding: ButtonPadding.PaddingAll5,
                          fontStyle:
                              ButtonFontStyle.MontserratMedium10WhiteA700),
                      Spacer(),
                      Container(
                          margin: getMargin(left: 92, right: 91),
                          padding: getPadding(all: 18),
                          decoration: AppDecoration.fillIndigo20063.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder96),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.indigo20067,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder78),
                                    child: Container(
                                        height: getSize(156),
                                        width: getSize(156),
                                        padding: getPadding(all: 13),
                                        decoration: AppDecoration
                                            .fillIndigo20067
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder78),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgShape130x130,
                                              height: getSize(130),
                                              width: getSize(130),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(65)),
                                              alignment: Alignment.center)
                                        ])))
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 122),
                              padding: getPadding(
                                  left: 72, top: 24, right: 72, bottom: 24),
                              decoration: AppDecoration.fillGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL50),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              variant: IconButtonVariant
                                                  .FillWhiteA700,
                                              shape: IconButtonShape
                                                  .CircleBorder25,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVolumeBlueGray80001)),
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              margin: getMargin(left: 10),
                                              variant: IconButtonVariant
                                                  .FillWhiteA700,
                                              shape: IconButtonShape
                                                  .CircleBorder25,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconmicmuteBlueGray80001))
                                        ]),
                                    CustomButton(
                                        height: getVerticalSize(70),
                                        text: "End Call",
                                        margin: getMargin(top: 20),
                                        variant: ButtonVariant.FillRedA200)
                                  ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
