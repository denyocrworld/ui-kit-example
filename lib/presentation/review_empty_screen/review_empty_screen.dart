import '../review_empty_screen/widgets/cardlist_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:deny_s_application5/presentation/review_select_voucher_bottomsheet/review_select_voucher_bottomsheet.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReviewEmptyScreen extends StatelessWidget {
  TextEditingController formdateemptyController = TextEditingController();

  TextEditingController formdateemptyOneController = TextEditingController();

  TextEditingController formTextEmptyController = TextEditingController();

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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Transaction review")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 20, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: getMargin(right: 24),
                                  padding: getPadding(all: 8),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                            height: getVerticalSize(140),
                                            width: getHorizontalSize(168),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgShape140x1682,
                                                      height:
                                                          getVerticalSize(140),
                                                      width: getHorizontalSize(
                                                          168),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  18)),
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
                                                                            74),
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
                                                                              imagePath: ImageConstant.imgButtoncategory,
                                                                              height: getVerticalSize(13),
                                                                              width: getHorizontalSize(11)),
                                                                          Padding(
                                                                              padding: getPadding(left: 6, top: 2, bottom: 1),
                                                                              child: Text("Apartment", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium8.copyWith(letterSpacing: getHorizontalSize(0.24))))
                                                                        ]))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 51,
                                                right: 9,
                                                bottom: 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocation9x9,
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
                                                  ]),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 20),
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 15,
                                                              right: 24,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .white
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img,
                                                                    height:
                                                                        getVerticalSize(
                                                                            18),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            15)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top: 3,
                                                                        bottom:
                                                                            2),
                                                                    child: Text(
                                                                        "Rent",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayMedium10
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.3))))
                                                              ])))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("Period",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding: getPadding(top: 19, right: 23),
                                  child: Row(children: [
                                    CustomTextFormField(
                                        width: getHorizontalSize(158),
                                        focusNode: FocusNode(),
                                        controller: formdateemptyController,
                                        hintText: "Check In",
                                        padding:
                                            TextFormFieldPadding.PaddingT26,
                                        fontStyle: TextFormFieldFontStyle
                                            .RalewayRomanMedium12,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 25,
                                                right: 10,
                                                bottom: 25),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(70))),
                                    CustomTextFormField(
                                        width: getHorizontalSize(158),
                                        focusNode: FocusNode(),
                                        controller: formdateemptyOneController,
                                        hintText: "Check Out",
                                        margin: getMargin(left: 11),
                                        padding:
                                            TextFormFieldPadding.PaddingT26,
                                        fontStyle: TextFormFieldFontStyle
                                            .RalewayRomanMedium12,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 16,
                                                top: 25,
                                                right: 10,
                                                bottom: 25),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCalendar)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(70)))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("Note for Owner",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: formTextEmptyController,
                                  hintText: "Write your note in here",
                                  margin: getMargin(top: 19, right: 24),
                                  padding: TextFormFieldPadding.PaddingT26,
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 25,
                                          right: 10,
                                          bottom: 25),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgFile)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(70))),
                              Padding(
                                  padding: getPadding(top: 36),
                                  child: Text("Payment Method",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(197),
                                      child: ListView.separated(
                                          padding: getPadding(top: 17),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return CardlistItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 34, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Have a voucher?",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.54))),
                                        Padding(
                                            padding:
                                                getPadding(top: 7, bottom: 2),
                                            child: Text("click in here",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10IndigoA400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: getVerticalSize(1),
                                  width: getHorizontalSize(100),
                                  margin: getMargin(left: 114, top: 58))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Next",
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapNext(context);
                })));
  }

  onTapNext(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ReviewSelectVoucherBottomsheet(),
        isScrollControlled: true);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
