import '../top_locations_location_detail_screen/widgets/chipview_item_widget.dart';
import '../top_locations_location_detail_screen/widgets/listshape_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:deny_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TopLocationsLocationDetailScreen extends StatelessWidget {
  TextEditingController formSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(320),
                          width: getHorizontalSize(355),
                          margin: getMargin(top: 10),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(320),
                                        width: getHorizontalSize(235),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgShape320x2352,
                                                  height: getVerticalSize(320),
                                                  width: getHorizontalSize(235),
                                                  alignment: Alignment.center),
                                              CustomIconButton(
                                                  height: 53,
                                                  width: 53,
                                                  margin: getMargin(
                                                      left: 14, bottom: 24),
                                                  variant: IconButtonVariant
                                                      .FillOrange300,
                                                  shape: IconButtonShape
                                                      .RoundedBorder17,
                                                  padding: IconButtonPadding
                                                      .PaddingAll16,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStar))
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgShape100x1102,
                                    height: getVerticalSize(100),
                                    width: getHorizontalSize(110),
                                    alignment: Alignment.bottomRight),
                                CustomImageView(
                                    imagePath: ImageConstant.imgShape210x1102,
                                    height: getVerticalSize(210),
                                    width: getHorizontalSize(110),
                                    alignment: Alignment.topRight),
                                CustomAppBar(
                                    height: getVerticalSize(64),
                                    leadingWidth: 74,
                                    leading: AppbarIconbutton(
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(left: 24),
                                        onTap: () {
                                          onTapArrowleft2(context);
                                        }),
                                    actions: [
                                      CustomIconButton(
                                          height: 50,
                                          width: 50,
                                          margin:
                                              getMargin(left: 24, right: 24),
                                          variant:
                                              IconButtonVariant.FillIndigoA400,
                                          shape: IconButtonShape.CircleBorder25,
                                          padding:
                                              IconButtonPadding.PaddingAll16,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgSettings50x50))
                                    ])
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(
                                      left: 24, top: 30, right: 24, bottom: 22),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Bali",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold25
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.75))),
                                        Padding(
                                            padding: getPadding(top: 7),
                                            child: Text(
                                                "Our recommended real estates in Jakarta",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanRegular12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.36)))),
                                        CustomSearchView(
                                            focusNode: FocusNode(),
                                            controller: formSearchController,
                                            hintText: "Modern House",
                                            margin: getMargin(top: 37),
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 25,
                                                    right: 16,
                                                    bottom: 25),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearch)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(70))),
                                        Padding(
                                            padding: getPadding(top: 20),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 8, bottom: 9),
                                                  child: Text("Found",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.54)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5,
                                                      top: 8,
                                                      bottom: 9),
                                                  child: Text("128",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.54)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5,
                                                      top: 8,
                                                      bottom: 9),
                                                  child: Text("estates",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayMedium18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.54)))),
                                              Spacer(),
                                              Container(
                                                  width: getHorizontalSize(93),
                                                  padding: getPadding(all: 8),
                                                  decoration: AppDecoration
                                                      .fillGray100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder20),
                                                  child: Row(children: [
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder12),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    24),
                                                            width:
                                                                getHorizontalSize(
                                                                    36),
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
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgMenu,
                                                                      height:
                                                                          getSize(
                                                                              12),
                                                                      width:
                                                                          getSize(
                                                                              12),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))),
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            getMargin(left: 5),
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder12),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    24),
                                                            width:
                                                                getHorizontalSize(
                                                                    36),
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
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgMenuBlueGray80001,
                                                                      height:
                                                                          getSize(
                                                                              12),
                                                                      width:
                                                                          getSize(
                                                                              12),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])))
                                                  ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 20),
                                            child: Wrap(
                                                runSpacing: getVerticalSize(5),
                                                spacing: getHorizontalSize(5),
                                                children: List<Widget>.generate(
                                                    2,
                                                    (index) =>
                                                        ChipviewItemWidget()))),
                                        Padding(
                                            padding: getPadding(top: 20),
                                            child: ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(11));
                                                },
                                                itemCount: 2,
                                                itemBuilder: (context, index) {
                                                  return ListshapeItemWidget();
                                                }))
                                      ]))))
                    ]))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
