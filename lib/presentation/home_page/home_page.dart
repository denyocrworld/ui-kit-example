import '../home_page/widgets/category1_item_widget.dart';
import '../home_page/widgets/home_item_widget.dart';
import '../home_page/widgets/layout23_item_widget.dart';
import '../home_page/widgets/layout24_item_widget.dart';
import '../home_page/widgets/layout25_item_widget.dart';
import '../home_page/widgets/listtext_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_circleimage.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_drop_down.dart';
import 'package:deny_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  TextEditingController formsearchemptyController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                title: CustomDropDown(
                    width: getHorizontalSize(162),
                    focusNode: FocusNode(),
                    icon: Container(
                        margin: getMargin(left: 8, right: 16),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown10x10)),
                    hintText: "Jakarta, Indonesia",
                    margin: getMargin(left: 24),
                    variant: DropDownVariant.OutlineBluegray50,
                    items: dropdownItemList,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 17, right: 8, bottom: 17),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgLocation1)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(50)),
                    onChanged: (value) {}),
                actions: [
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(left: 24),
                      color: ColorConstant.gray100,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ColorConstant.gray100,
                              width: getHorizontalSize(1)),
                          borderRadius: BorderRadiusStyle.roundedBorder25),
                      child: Container(
                          height: getSize(50),
                          width: getSize(50),
                          padding: getPadding(
                              left: 13, top: 10, right: 13, bottom: 10),
                          decoration: AppDecoration.outlineGray1001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder25),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgNotification,
                                height: getSize(20),
                                width: getSize(20),
                                alignment: Alignment.center,
                                margin: getMargin(
                                    left: 2, top: 5, right: 2, bottom: 5)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: getMargin(left: 12, bottom: 18),
                                    padding: getPadding(all: 3),
                                    decoration: AppDecoration.fillGray100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(6),
                                              width: getSize(6),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.redA200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              3))))
                                        ])))
                          ]))),
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgShape50x5011,
                      margin: getMargin(left: 8, right: 24))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 39),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(279),
                                  margin: getMargin(left: 3, right: 69),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Hey,",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: "Jonathan! \n",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w800,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: "Let's start exploring",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: " 👋 ",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing:
                                                    getHorizontalSize(0.75)))
                                      ]),
                                      textAlign: TextAlign.left)),
                              CustomSearchView(
                                  focusNode: FocusNode(),
                                  controller: formsearchemptyController,
                                  hintText: "Find location",
                                  margin:
                                      getMargin(left: 3, top: 13, right: 26),
                                  variant: SearchViewVariant.OutlineIndigo100b2,
                                  padding: SearchViewPadding.PaddingT26_1,
                                  fontStyle: SearchViewFontStyle
                                      .RalewayRegular12Indigo200,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 18,
                                          top: 27,
                                          right: 14,
                                          bottom: 28),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgSearchBlack900)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(69)),
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 24,
                                          right: 11,
                                          bottom: 24),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgUpload)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(69))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(78),
                                      child: ListView.separated(
                                          padding: getPadding(top: 27),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Category1ItemWidget();
                                          }))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(199),
                                      child: ListView.separated(
                                          padding: getPadding(top: 19),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: 2,
                                          itemBuilder: (context, index) {
                                            return ListtextItemWidget(
                                                onTapItemPromotion: () {
                                              onTapItemPromotion(context);
                                            });
                                          }))),
                              Padding(
                                  padding: getPadding(top: 34, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Featured Estates",
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
                                            child: Text("view all",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10IndigoA400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(175),
                                      child: ListView.separated(
                                          padding: getPadding(top: 19),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: 2,
                                          itemBuilder: (context, index) {
                                            return Layout23ItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 36, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Top Locations",
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
                                            child: Text("explore",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10IndigoA400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(73),
                                      child: ListView.separated(
                                          padding: getPadding(top: 17),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Layout24ItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 36, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Top Estate Agent",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.54))),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 3),
                                            child: Text("explore",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10IndigoA400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(107),
                                      child: ListView.separated(
                                          padding: getPadding(top: 17),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(15));
                                          },
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return Layout25ItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 36),
                                  child: Text("Explore Nearby Estates",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding: getPadding(top: 17, right: 24),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(232),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(7),
                                              crossAxisSpacing:
                                                  getHorizontalSize(7)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return HomeItemWidget(
                                            onTapColumnshape: () {
                                          onTapColumnshape(context);
                                        });
                                      }))
                            ]))))));
  }

  onTapItemPromotion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.promotionScreen);
  }

  onTapColumnshape(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.propertyDetailsScreen);
  }
}
