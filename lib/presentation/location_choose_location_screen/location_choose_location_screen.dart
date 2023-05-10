import 'dart:async';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:deny_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LocationChooseLocationScreen extends StatelessWidget {
  Completer<GoogleMapController> googleMapController = Completer();

  TextEditingController frameTwentySevenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                      height: size.height,
                      width: double.maxFinite,
                      child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: CameraPosition(
                              target: LatLng(
                                  37.43296265331129, -122.08832357078792),
                              zoom: 14.4746),
                          onMapCreated: (GoogleMapController controller) {
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    variant: IconButtonVariant.FillWhiteA700,
                                    shape: IconButtonShape.CircleBorder25,
                                    padding: IconButtonPadding.PaddingAll16,
                                    onTap: () {
                                      onTapBtnArrowleft(context);
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                Container(
                                    margin: getMargin(top: 15),
                                    padding: getPadding(
                                        left: 11,
                                        top: 15,
                                        right: 11,
                                        bottom: 15),
                                    decoration: AppDecoration.outlineIndigo100b2
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder12),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomSearchView(
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      frameTwentySevenController,
                                                  hintText: "Find location",
                                                  margin: getMargin(bottom: 1),
                                                  variant: SearchViewVariant
                                                      .FillWhiteA700,
                                                  padding: SearchViewPadding
                                                      .PaddingT11,
                                                  fontStyle: SearchViewFontStyle
                                                      .RalewayRegular12Indigo200,
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          left: 5,
                                                          top: 10,
                                                          right: 10,
                                                          bottom: 9),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearch)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                                  39)),
                                                  suffix: Padding(
                                                      padding: EdgeInsets.only(
                                                          right:
                                                              getHorizontalSize(
                                                                  15)),
                                                      child: IconButton(
                                                          onPressed: () {
                                                            frameTwentySevenController
                                                                .clear();
                                                          },
                                                          icon: Icon(
                                                              Icons.clear,
                                                              color: Colors.grey
                                                                  .shade600))))),
                                          Padding(
                                              padding: getPadding(left: 4),
                                              child: SizedBox(
                                                  height: getVerticalSize(39),
                                                  child: VerticalDivider(
                                                      width:
                                                          getHorizontalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .indigo2006c,
                                                      indent:
                                                          getHorizontalSize(2),
                                                      endIndent:
                                                          getHorizontalSize(
                                                              1)))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgUpload,
                                              height: getSize(20),
                                              width: getSize(20),
                                              margin: getMargin(
                                                  left: 14,
                                                  top: 10,
                                                  bottom: 10))
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getVerticalSize(51),
                                    width: getHorizontalSize(34),
                                    margin: getMargin(left: 67, top: 108)),
                                Spacer(),
                                CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    shape: IconButtonShape.CircleBorder25,
                                    padding: IconButtonPadding.PaddingAll16,
                                    alignment: Alignment.centerRight,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLocation5)),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 15),
                                        padding: getPadding(
                                            left: 15,
                                            top: 20,
                                            right: 15,
                                            bottom: 20),
                                        decoration: AppDecoration
                                            .outlineIndigo100b2
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("Location detail",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayBold18
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.54)))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 18, right: 10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 50,
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
                                                                    ImageConstant
                                                                        .imgLocation50x50)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    221),
                                                            margin: getMargin(
                                                                left: 15,
                                                                top: 7,
                                                                bottom: 5),
                                                            child: Text(
                                                                "Srengseng, Kembangan, West Jakarta City, Jakarta 11630",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.36))))
                                                      ]))
                                            ])))
                              ])))
                ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Choose location",
                onTap: () {
                  onTapChooselocationOne(context);
                })));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapChooselocationOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.locationFillScreen);
  }
}
