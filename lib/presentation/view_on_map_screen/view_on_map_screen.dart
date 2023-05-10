import 'dart:async';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_drop_down.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ViewOnMapScreen extends StatelessWidget {
  Completer<GoogleMapController> googleMapController = Completer();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: size.height,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            Container(
                                height: size.height,
                                width: double.maxFinite,
                                child: GoogleMap(
                                    mapType: MapType.normal,
                                    initialCameraPosition: CameraPosition(
                                        target: LatLng(37.43296265331129,
                                            -122.08832357078792),
                                        zoom: 14.4746),
                                    onMapCreated:
                                        (GoogleMapController controller) {
                                      googleMapController.complete(controller);
                                    },
                                    zoomControlsEnabled: false,
                                    zoomGesturesEnabled: false,
                                    myLocationButtonEnabled: false,
                                    myLocationEnabled: false)),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(all: 24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              margin: getMargin(left: 1),
                                              variant: IconButtonVariant
                                                  .FillWhiteA700cc,
                                              shape: IconButtonShape
                                                  .CircleBorder25,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              onTap: () {
                                                onTapBtnArrowleft(context);
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft)),
                                          Spacer(),
                                          Container(
                                              width: double.maxFinite,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 15,
                                                      top: 20,
                                                      right: 15,
                                                      bottom: 20),
                                                  decoration: AppDecoration
                                                      .outlineIndigo100b2
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder25),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text(
                                                                "Location detail",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayBold18
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.54)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 18),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  CustomIconButton(
                                                                      height:
                                                                          50,
                                                                      width: 50,
                                                                      variant:
                                                                          IconButtonVariant
                                                                              .OutlineBluegray50_1,
                                                                      shape: IconButtonShape
                                                                          .CircleBorder25,
                                                                      padding:
                                                                          IconButtonPadding
                                                                              .PaddingAll16,
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgLocation50x50)),
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          232),
                                                                      margin: getMargin(
                                                                          left:
                                                                              15,
                                                                          top:
                                                                              7,
                                                                          bottom:
                                                                              6),
                                                                      child: Text(
                                                                          "St. Cikoko Timur, Kec. Pancoran, Jakarta\nSelatan, Indonesia 12770",
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtRalewayRegular12
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.36))))
                                                                ]))
                                                      ])))
                                        ])))
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgMapdetail,
                      height: getVerticalSize(441),
                      width: getHorizontalSize(375),
                      alignment: Alignment.topCenter,
                      margin: getMargin(top: 168)),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(
                              left: 24, top: 590, right: 24, bottom: 172),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomDropDown(
                                    width: getHorizontalSize(161),
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 7, right: 16),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdown10x10)),
                                    hintText: "Jakarta, Indonesia",
                                    items: dropdownItemList,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 16,
                                            top: 17,
                                            right: 8,
                                            bottom: 17),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgLocation1)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(50)),
                                    onChanged: (value) {}),
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    shape: IconButtonShape.CircleBorder25,
                                    padding: IconButtonPadding.PaddingAll16,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLocation5))
                              ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 24, top: 94, bottom: 668),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Container(
                                    width: getHorizontalSize(122),
                                    padding: getPadding(
                                        left: 25,
                                        top: 15,
                                        right: 25,
                                        bottom: 15),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgButtoncategory25x25,
                                              height: getVerticalSize(18),
                                              width: getHorizontalSize(15)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, top: 4, bottom: 1),
                                              child: Text("1 Hospital",
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
                                    width: getHorizontalSize(142),
                                    margin: getMargin(left: 10),
                                    padding: getPadding(
                                        left: 25,
                                        top: 15,
                                        right: 25,
                                        bottom: 15),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.img18x15,
                                              height: getVerticalSize(18),
                                              width: getHorizontalSize(15)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, top: 3, bottom: 2),
                                              child: Text("2 Gas stations",
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
                                    width: getHorizontalSize(120),
                                    margin: getMargin(left: 10),
                                    padding: getPadding(
                                        left: 25,
                                        top: 15,
                                        right: 25,
                                        bottom: 15),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.img2,
                                              height: getVerticalSize(18),
                                              width: getHorizontalSize(15)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, top: 3, bottom: 2),
                                              child: Text("1 Schools",
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
                              ]))))
                ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
