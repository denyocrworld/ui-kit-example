import '../all_reviews_screen/widgets/listshape2_item_widget.dart';
import '../all_reviews_screen/widgets/ratingcategory_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AllReviewsScreen extends StatelessWidget {
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
                      onTapArrowleft15(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "All reviews")),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 24, top: 17, right: 24),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder25),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgShape53x531,
                                height: getSize(53),
                                width: getSize(53),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(26))),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 11, bottom: 11),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Anderson",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRalewayBold14
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.42))),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Text("Owner",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRalewayRegular9
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.27))))
                                    ])),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgVolume50x50,
                                height: getSize(20),
                                width: getSize(20),
                                margin:
                                    getMargin(top: 17, right: 8, bottom: 16))
                          ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(70),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 20),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(14));
                                  },
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return RatingcategoryItemWidget();
                                  }))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 15),
                              child: Text("User reviews",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold18.copyWith(
                                      letterSpacing:
                                          getHorizontalSize(0.54))))),
                      Padding(
                          padding: getPadding(left: 24, top: 18, right: 24),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(19));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Listshape2ItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }
}
