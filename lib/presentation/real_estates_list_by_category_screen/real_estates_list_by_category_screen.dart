import '../real_estates_list_by_category_screen/widgets/datalist_item_widget.dart';
import '../real_estates_list_by_category_screen/widgets/gridshape1_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RealEstatesListByCategoryScreen extends StatelessWidget {
  TextEditingController formsearchemptyController = TextEditingController();

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
                          height: getVerticalSize(330),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBackground,
                                height: getVerticalSize(330),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 24, right: 24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(50),
                                              leadingWidth: 74,
                                              leading: AppbarIconbutton(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  margin: getMargin(left: 24),
                                                  onTap: () {
                                                    onTapArrowleft1(context);
                                                  }),
                                              actions: [
                                                AppbarIconbutton(
                                                    svgPath: ImageConstant
                                                        .imgSettings,
                                                    margin: getMargin(
                                                        left: 24, right: 24))
                                              ]),
                                          Container(
                                              margin: getMargin(top: 179),
                                              padding: getPadding(
                                                  left: 17,
                                                  top: 14,
                                                  right: 17,
                                                  bottom: 14),
                                              decoration: AppDecoration
                                                  .fillBluegray700af
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                              child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgButtoncategory25x25,
                                                        height:
                                                            getVerticalSize(23),
                                                        width:
                                                            getHorizontalSize(
                                                                19)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 4,
                                                            bottom: 4),
                                                        child: Text("Villa",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRalewayMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.36))))
                                                  ]))
                                        ])))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 26, bottom: 25),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Top Villa",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.54))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(173),
                                                child: ListView.separated(
                                                    padding:
                                                        getPadding(top: 17),
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    separatorBuilder:
                                                        (context, index) {
                                                      return SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  10));
                                                    },
                                                    itemCount: 3,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return DatalistItemWidget();
                                                    }))),
                                        CustomSearchView(
                                            focusNode: FocusNode(),
                                            controller:
                                                formsearchemptyController,
                                            hintText:
                                                "Search in villa’s category",
                                            margin:
                                                getMargin(top: 35, right: 24),
                                            padding:
                                                SearchViewPadding.PaddingT26_1,
                                            fontStyle: SearchViewFontStyle
                                                .RalewayRegular12Indigo200,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 25,
                                                    right: 10,
                                                    bottom: 25),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearch)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight: getVerticalSize(70)),
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 25,
                                                    right: 16,
                                                    bottom: 25),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgUpload)),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(70))),
                                        Padding(
                                            padding:
                                                getPadding(top: 35, right: 24),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 8, bottom: 9),
                                                  child: Text("120",
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
                                                  child: Text("Villa",
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
                                                                              .imgUserBlueGray80001,
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
                                                                              .imgTelevision12x12,
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
                                            padding:
                                                getPadding(top: 20, right: 24),
                                            child: GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent:
                                                            getVerticalSize(
                                                                232),
                                                        crossAxisCount: 2,
                                                        mainAxisSpacing:
                                                            getHorizontalSize(
                                                                7),
                                                        crossAxisSpacing:
                                                            getHorizontalSize(
                                                                7)),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: 4,
                                                itemBuilder: (context, index) {
                                                  return Gridshape1ItemWidget();
                                                }))
                                      ]))))
                    ]))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
