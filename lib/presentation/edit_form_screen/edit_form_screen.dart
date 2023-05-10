import '../edit_form_screen/widgets/chipview4_item_widget.dart';
import '../edit_form_screen/widgets/editform_item_widget.dart';
import '../edit_form_screen/widgets/gridshape5_item_widget.dart';
import '../edit_form_screen/widgets/layout12_item_widget.dart';
import '../edit_form_screen/widgets/layout14_item_widget.dart';
import '../edit_form_screen/widgets/layout16_item_widget.dart';
import '../edit_form_screen/widgets/layout18_item_widget.dart';
import 'dart:async';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:deny_s_application5/presentation/edit_success_bottomsheet/edit_success_bottomsheet.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditFormScreen extends StatelessWidget {
  TextEditingController formPasswordController = TextEditingController();

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft22(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Edit Listing")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 23, top: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: getMargin(left: 1, right: 24),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                            height: getVerticalSize(104),
                                            width: getHorizontalSize(168),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgShape160x14411,
                                                      height:
                                                          getVerticalSize(104),
                                                      width: getHorizontalSize(
                                                          168),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  15)),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 25,
                                                                    width: 25,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillWhiteA700c6,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgLocationRedA200)),
                                                                Container(
                                                                    margin: getMargin(
                                                                        top:
                                                                            38),
                                                                    padding: getPadding(
                                                                        left: 7,
                                                                        top: 5,
                                                                        right:
                                                                            7,
                                                                        bottom:
                                                                            5),
                                                                    decoration: AppDecoration
                                                                        .fillBluegray700af
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                    child: Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgButtoncategory1,
                                                                              height: getVerticalSize(13),
                                                                              width: getHorizontalSize(11)),
                                                                          Padding(
                                                                              padding: getPadding(left: 6, top: 1, right: 17, bottom: 2),
                                                                              child: Text("House", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium8.copyWith(letterSpacing: getHorizontalSize(0.24))))
                                                                        ]))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 38,
                                                bottom: 21),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width:
                                                          getHorizontalSize(70),
                                                      child: Text(
                                                          "Schoolview House",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewayBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.36)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar1,
                                                            height: getSize(9),
                                                            width: getSize(9)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2),
                                                            child: Text("4.6",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratBold8))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 7),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocationDeepOrangeA200,
                                                            height: getSize(9),
                                                            width: getSize(9)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2),
                                                            child: Text(
                                                                "Semarang, Indonesia",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRegular8))
                                                      ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 36),
                                  child: Text("Listing Title",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: formPasswordController,
                                  hintText: "Schoolview House",
                                  margin:
                                      getMargin(left: 1, top: 17, right: 24),
                                  fontStyle: TextFormFieldFontStyle
                                      .RalewaySemiBold12Bluegray80001,
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 25,
                                          right: 16,
                                          bottom: 25),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(
                                                  getHorizontalSize(50)),
                                              bottomRight: Radius.circular(
                                                  getHorizontalSize(50)))),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgMail)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(70))),
                              Padding(
                                  padding: getPadding(left: 1, top: 36),
                                  child: Text("Listing type",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          2, (index) => Layout12ItemWidget()))),
                              Padding(
                                  padding: getPadding(left: 1, top: 35),
                                  child: Text("Property category",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding: getPadding(left: 1, top: 17),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          5, (index) => Layout14ItemWidget()))),
                              Padding(
                                  padding: getPadding(left: 1, top: 33),
                                  child: Text("Location",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 19, right: 50),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 50,
                                        width: 50,
                                        variant:
                                            IconButtonVariant.OutlineGray100_1,
                                        shape: IconButtonShape.CircleBorder25,
                                        padding: IconButtonPadding.PaddingAll16,
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocation50x50)),
                                    Expanded(
                                        child: Container(
                                            width: getHorizontalSize(235),
                                            margin: getMargin(
                                                left: 15, top: 7, bottom: 5),
                                            child: Text(
                                                "Jl. Gerungsari, Bulusan, Kec. Tembalang, Kota Semarang, Jawa Tengah 50277",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRegular12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.36)))))
                                  ])),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(left: 1, top: 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder25),
                                  child: Container(
                                      height: getVerticalSize(200),
                                      width: getHorizontalSize(327),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Container(
                                                height: getVerticalSize(200),
                                                width: getHorizontalSize(327),
                                                child: GoogleMap(
                                                    mapType: MapType.normal,
                                                    initialCameraPosition:
                                                        CameraPosition(
                                                            target: LatLng(
                                                                37.43296265331129,
                                                                -122.08832357078792),
                                                            zoom: 14.4746),
                                                    onMapCreated:
                                                        (GoogleMapController
                                                            controller) {
                                                      googleMapController
                                                          .complete(controller);
                                                    },
                                                    zoomControlsEnabled: false,
                                                    zoomGesturesEnabled: false,
                                                    myLocationButtonEnabled:
                                                        false,
                                                    myLocationEnabled: false)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    padding: getPadding(
                                                        left: 109,
                                                        top: 16,
                                                        right: 109,
                                                        bottom: 16),
                                                    decoration: AppDecoration
                                                        .fillWhiteA7007f,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "Select on the map",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRalewayRegular12Bluegray80001
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.36))))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    height: getVerticalSize(51),
                                                    width:
                                                        getHorizontalSize(34),
                                                    margin: getMargin(
                                                        top: 40, right: 118),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          18),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          31),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                height: getVerticalSize(18),
                                                                                width: getHorizontalSize(31),
                                                                                decoration: BoxDecoration(color: ColorConstant.indigoA40067, borderRadius: BorderRadius.circular(getHorizontalSize(15))))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                height: getVerticalSize(8),
                                                                                width: getHorizontalSize(14),
                                                                                decoration: BoxDecoration(color: ColorConstant.indigoA40081, borderRadius: BorderRadius.circular(getHorizontalSize(7)))))
                                                                      ]))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          43),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          34),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgLocation43x34,
                                                                            height: getVerticalSize(43),
                                                                            width: getHorizontalSize(34),
                                                                            radius: BorderRadius.circular(getHorizontalSize(3)),
                                                                            alignment: Alignment.center),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgShape24,
                                                                            height: getSize(29),
                                                                            width: getSize(29),
                                                                            alignment: Alignment.topCenter,
                                                                            margin: getMargin(top: 2))
                                                                      ])))
                                                        ])))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 1, top: 36),
                                  child: Text("Listing Photos",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 17, right: 24),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(162),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(9),
                                              crossAxisSpacing:
                                                  getHorizontalSize(9)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return Gridshape5ItemWidget();
                                      })),
                              Padding(
                                  padding: getPadding(left: 1, top: 34),
                                  child: Text("Sell Price",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Container(
                                  margin:
                                      getMargin(left: 1, top: 19, right: 24),
                                  padding: getPadding(
                                      left: 16, top: 25, right: 16, bottom: 25),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 1),
                                            child: Text(" 150,000",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold12Bluegray80001
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.36)))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgAlarm,
                                            height: getSize(20),
                                            width: getSize(20))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 34),
                                  child: Text("Rent Price",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Container(
                                  margin:
                                      getMargin(left: 1, top: 19, right: 24),
                                  padding: getPadding(
                                      left: 16, top: 25, right: 16, bottom: 25),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder12),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 1),
                                            child: Text(" 320",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold12Bluegray80001
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.36)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 2, top: 4, bottom: 3),
                                            child: Text("/month",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10Bluegray80001
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3)))),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgAlarm,
                                            height: getSize(20),
                                            width: getSize(20))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 2, top: 15),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          2, (index) => Layout16ItemWidget()))),
                              Padding(
                                  padding: getPadding(left: 1, top: 38),
                                  child: Text("Property Features",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 17, right: 24),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15));
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return EditformItemWidget();
                                      })),
                              Padding(
                                  padding: getPadding(left: 1, top: 34),
                                  child: Text("Total Rooms",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18)),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(left: 1, top: 19),
                                  child: IntrinsicWidth(
                                      child: Wrap(
                                          runSpacing: getVerticalSize(5),
                                          spacing: getHorizontalSize(5),
                                          children: List<Widget>.generate(
                                              4,
                                              (index) =>
                                                  Layout18ItemWidget())))),
                              Padding(
                                  padding: getPadding(left: 1, top: 36),
                                  child: Text("Environment / Facilities",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18)),
                              Padding(
                                  padding: getPadding(left: 1, top: 19),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          7, (index) => Chipview4ItemWidget())))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Update",
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapUpdate(context);
                })));
  }

  onTapUpdate(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => EditSuccessBottomsheet(),
        isScrollControlled: true);
  }

  onTapArrowleft22(BuildContext context) {
    Navigator.pop(context);
  }
}
