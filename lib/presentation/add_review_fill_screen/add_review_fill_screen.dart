import '../add_review_fill_screen/widgets/gridshape4_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:deny_s_application5/presentation/add_review_success_bottomsheet/add_review_success_bottomsheet.dart';

class AddReviewFillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft21(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Add Review")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 54, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(303),
                                  margin: getMargin(right: 24),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Hi, how was your ",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: "overall\nexperience? 👋",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w800,
                                                letterSpacing:
                                                    getHorizontalSize(0.75)))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lorem ipsum dolor sit amet",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.36)))),
                              Padding(
                                  padding: getPadding(top: 51, right: 40),
                                  child: Row(children: [
                                    RatingBar.builder(
                                        initialRating: 0,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemSize: getVerticalSize(40),
                                        itemCount: 5,
                                        updateOnDrag: true,
                                        onRatingUpdate: (rating) {},
                                        itemBuilder: (context, _) {
                                          return Icon(Icons.star);
                                        }),
                                    Padding(
                                        padding: getPadding(
                                            left: 15, top: 4, bottom: 4),
                                        child: Text("4.0",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratExtraBold25
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.75))))
                                  ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: getHorizontalSize(327),
                                      margin: getMargin(top: 20),
                                      padding: getPadding(all: 6),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder12),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(244),
                                                margin: getMargin(
                                                    left: 10,
                                                    top: 17,
                                                    right: 60),
                                                child: Text(
                                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRalewaySemiBold12
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.36)))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSignal,
                                                height: getSize(7),
                                                width: getSize(7),
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: getMargin(top: 48))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 15),
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
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Gridshape4ItemWidget();
                                      }))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Submit",
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapSubmit(context);
                })));
  }

  onTapSubmit(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => AddReviewSuccessBottomsheet(),
        isScrollControlled: true);
  }

  onTapArrowleft21(BuildContext context) {
    Navigator.pop(context);
  }
}
