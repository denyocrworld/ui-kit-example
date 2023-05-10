import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_stack.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:deny_s_application5/presentation/filter_full_bottomsheet/filter_full_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class EmptySearchScreen extends StatelessWidget {
  TextEditingController formSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(77),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 3, bottom: 3),
                    onTap: () {
                      onTapArrowleft16(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Search results"),
                actions: [
                  AppbarStack(
                      onTap: () {
                        onTapSettingsOne(context);
                      },
                      margin: getMargin(left: 24, top: 3, right: 24, bottom: 3))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 17, right: 24, bottom: 17),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: formSearchController,
                          hintText: "Minix",
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 25, right: 16, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: Text("Found",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayMedium18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.54)))),
                                Padding(
                                    padding:
                                        getPadding(left: 5, top: 8, bottom: 9),
                                    child: Text("0",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratBold18RedA200
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.54)))),
                                Padding(
                                    padding:
                                        getPadding(left: 5, top: 8, bottom: 9),
                                    child: Text("estates",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayMedium18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.54)))),
                                Spacer(),
                                Container(
                                    width: getHorizontalSize(93),
                                    padding: getPadding(all: 8),
                                    decoration: AppDecoration.fillGray100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder12),
                                              child: Container(
                                                  height: getVerticalSize(24),
                                                  width: getHorizontalSize(36),
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 6,
                                                      right: 12,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .white
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu,
                                                        height: getSize(12),
                                                        width: getSize(12),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: getMargin(left: 5),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder12),
                                              child: Container(
                                                  height: getVerticalSize(24),
                                                  width: getHorizontalSize(36),
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 6,
                                                      right: 12,
                                                      bottom: 6),
                                                  decoration: AppDecoration
                                                      .white
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder12),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu1,
                                                        height: getSize(12),
                                                        width: getSize(12),
                                                        alignment:
                                                            Alignment.center)
                                                  ])))
                                        ]))
                              ])),
                      Spacer(),
                      Container(
                          margin: getMargin(left: 92, right: 93),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillRedA20063.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder71),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        padding: getPadding(all: 20),
                                        decoration: AppDecoration.fillRedA20067
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder55),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getSize(70),
                                                  padding: getPadding(
                                                      left: 30,
                                                      top: 19,
                                                      right: 31,
                                                      bottom: 19),
                                                  decoration: AppDecoration
                                                      .txtFillRedA200
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder35),
                                                  child: Text("!",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold25
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.75))))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(top: 17),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Search ",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "not found 😢",
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Container(
                          width: getHorizontalSize(297),
                          margin: getMargin(
                              left: 15, top: 28, right: 15, bottom: 191),
                          child: Text(
                              "Sorry, we can’t find the real estates you are looking for. Maybe, a little spelling mistake?",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRalewayRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.36))))
                    ]))));
  }

  onTapArrowleft16(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSettingsOne(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => FilterFullBottomsheet(),
        isScrollControlled: true);
  }
}
