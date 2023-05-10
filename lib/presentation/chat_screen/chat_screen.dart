import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_circleimage.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  TextEditingController descriptionOneController = TextEditingController();

  TextEditingController formchatController = TextEditingController();

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
                      onTapArrowleft13(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(children: [
                            Container(
                                height: getSize(50),
                                width: getSize(50),
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      AppbarCircleimage(
                                          imagePath:
                                              ImageConstant.imgShape50x507),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 38, bottom: 38),
                                              padding: getPadding(all: 2),
                                              decoration: AppDecoration
                                                  .outlineGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getSize(8),
                                                        width: getSize(8),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .greenA400,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            4))))
                                                  ])))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 10, top: 8, bottom: 8),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AppbarTitle(text: "Milano"),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  getPadding(top: 3, right: 15),
                                              child: Text("Online",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewaySemiBold10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.3)))))
                                    ]))
                          ])
                        ])),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgTrashBlueGray80001,
                      margin: getMargin(left: 24, top: 3, right: 24, bottom: 3),
                      onTap: () {
                        onTapTrash(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 11),
                    padding:
                        getPadding(left: 23, top: 24, right: 23, bottom: 24),
                    decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL25),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              height: getVerticalSize(24),
                              width: getHorizontalSize(124),
                              text: "December 12, 2022",
                              margin: getMargin(top: 6),
                              variant: ButtonVariant.FillIndigo200,
                              shape: ButtonShape.CircleBorder12,
                              padding: ButtonPadding.PaddingAll5,
                              fontStyle:
                                  ButtonFontStyle.MontserratMedium10WhiteA700,
                              alignment: Alignment.center),
                          Container(
                              margin: getMargin(left: 50, top: 20),
                              padding: getPadding(all: 8),
                              decoration: AppDecoration.white.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL16),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: getVerticalSize(104),
                                        width: getHorizontalSize(128),
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgShape104x1281,
                                                  height: getVerticalSize(104),
                                                  width: getHorizontalSize(128),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(12)),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                                                        ImageConstant
                                                                            .imgLocationRedA200)),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            38),
                                                                padding:
                                                                    getPadding(
                                                                        left: 7,
                                                                        top: 5,
                                                                        right:
                                                                            7,
                                                                        bottom:
                                                                            5),
                                                                decoration: AppDecoration
                                                                    .fillBluegray700af
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgButtoncategory,
                                                                          height: getVerticalSize(
                                                                              13),
                                                                          width:
                                                                              getHorizontalSize(11)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  6,
                                                                              top:
                                                                                  2,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "Apartment",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRalewayMedium8.copyWith(letterSpacing: getHorizontalSize(0.24))))
                                                                    ]))
                                                          ])))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 16,
                                            top: 13,
                                            right: 23,
                                            bottom: 21),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: getHorizontalSize(93),
                                                  child: Text(
                                                      "Sky Dandelions\nApartment",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRalewayBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.36)))),
                                              Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgStar1,
                                                        height: getSize(9),
                                                        width: getSize(9)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 2),
                                                        child: Text("4.9",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratBold8))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocationDeepOrangeA200,
                                                        height: getSize(9),
                                                        width: getSize(9)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 2),
                                                        child: Text(
                                                            "Jakarta, Indonesia",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRalewayRegular8))
                                                  ]))
                                            ]))
                                  ])),
                          Padding(
                              padding: getPadding(left: 50, top: 15),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            padding: getPadding(all: 16),
                                            decoration: AppDecoration.white
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          243),
                                                      margin: getMargin(top: 1),
                                                      child: Text(
                                                          "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod?",
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: AppStyle
                                                              .txtRalewayMedium12Bluegray600
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.36))))
                                                ]))),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark16x16,
                                                  height: getSize(16),
                                                  width: getSize(16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 234,
                                                      top: 2,
                                                      bottom: 1),
                                                  child: Text("10.45",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium10Indigo200
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.3))))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 15, right: 17),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            controller:
                                                descriptionOneController,
                                            hintText:
                                                " tempor incididunt ut labore et dolore magna \naliqua. Ut enim ad minim veniam, quis nostrud \nexercitation.",
                                            variant: TextFormFieldVariant
                                                .FillBluegray80001,
                                            shape: TextFormFieldShape
                                                .CustomBorderBL16,
                                            padding:
                                                TextFormFieldPadding.PaddingT18,
                                            fontStyle: TextFormFieldFontStyle
                                                .RalewayMedium12WhiteA700,
                                            maxLines: 4),
                                        Padding(
                                            padding: getPadding(top: 10),
                                            child: Text("10.46",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium10Indigo200
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ]))),
                          Spacer(),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: formchatController,
                              hintText: "Say something",
                              variant: TextFormFieldVariant.White,
                              shape: TextFormFieldShape.CircleBorder25,
                              padding: TextFormFieldPadding.PaddingT17_1,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 15, right: 10, bottom: 15),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCameraBlueGray600)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50)),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 20, right: 22, bottom: 20),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgSend)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50)))
                        ])))));
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTrash(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.callScreen);
  }
}
