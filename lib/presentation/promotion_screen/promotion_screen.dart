import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(77),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 3, bottom: 3),
                    onTap: () {
                      onTapArrowleft25(context);
                    }),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgUpload50x50,
                      margin: getMargin(left: 24, top: 3, right: 24, bottom: 3))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 32),
                              color: ColorConstant.indigoA400,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder25),
                              child: Container(
                                  height: getVerticalSize(200),
                                  width: getHorizontalSize(327),
                                  padding: getPadding(top: 1, bottom: 1),
                                  decoration: AppDecoration.fillIndigoA400
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 22, top: 33),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  97),
                                                          child: Text(
                                                              "Halloween \nSale!",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayBold18WhiteA700
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.54)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8),
                                                          child: Text(
                                                              "All discount up to 60%",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRegular10WhiteA700))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSubtract145x207,
                                            height: getVerticalSize(164),
                                            width: getHorizontalSize(207),
                                            alignment: Alignment.bottomRight)
                                      ])))),
                      Container(
                          width: getHorizontalSize(290),
                          margin: getMargin(left: 24, top: 24, right: 60),
                          child: Text(
                              "Limited time Halloween Sale is coming back! 🔥",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanRegular25.copyWith(
                                  letterSpacing: getHorizontalSize(0.75)))),
                      Padding(
                          padding: getPadding(left: 24, top: 9),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar9x9,
                                height: getSize(9),
                                width: getSize(9),
                                margin: getMargin(bottom: 1)),
                            Padding(
                                padding: getPadding(left: 2),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "October ",
                                          style: TextStyle(
                                              color: ColorConstant.blueGray600,
                                              fontSize: getFontSize(8),
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "27, 2022",
                                          style: TextStyle(
                                              color: ColorConstant.blueGray600,
                                              fontSize: getFontSize(8),
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w400))
                                    ]),
                                    textAlign: TextAlign.left))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 24, right: 24),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration
                                  .gradientGreenA40063TealA70063
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomIconButton(
                                        height: 53,
                                        width: 53,
                                        variant:
                                            IconButtonVariant.FillGreenA400,
                                        shape: IconButtonShape.RoundedBorder17,
                                        padding: IconButtonPadding.PaddingAll16,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgTicket53x53)),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 8,
                                                right: 3,
                                                bottom: 7),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("HLWN40",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.54))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "Use this coupon to get ",
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray600,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                9),
                                                                        fontFamily:
                                                                            'Raleway',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.27))),
                                                                TextSpan(
                                                                    text:
                                                                        "40% off on your transaction",
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray600,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                9),
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.27)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])))
                                  ]))),
                      Container(
                          height: getVerticalSize(245),
                          width: double.maxFinite,
                          margin: getMargin(top: 27),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        width: getHorizontalSize(325),
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanRegular12Bluegray600
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.36))))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: getPadding(all: 24),
                                        decoration: AppDecoration
                                            .gradientWhiteA700WhiteA700001,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomButton(
                                                  height: getVerticalSize(70),
                                                  text: "Start Explore",
                                                  margin: getMargin(top: 65))
                                            ])))
                              ]))
                    ]))));
  }

  onTapArrowleft25(BuildContext context) {
    Navigator.pop(context);
  }
}
