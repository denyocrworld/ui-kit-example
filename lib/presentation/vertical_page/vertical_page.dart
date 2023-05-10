import '../vertical_page/widgets/vertical_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class VerticalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(all: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 18, bottom: 14),
                                          child: Text("My favorite",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRalewayBold14)),
                                      CustomIconButton(
                                          height: 50,
                                          width: 50,
                                          margin: getMargin(left: 75),
                                          variant:
                                              IconButtonVariant.FillGray100,
                                          shape: IconButtonShape.CircleBorder25,
                                          padding:
                                              IconButtonPadding.PaddingAll16,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgAe45615de12342ab99f19311ea988aa7))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 8, bottom: 9),
                                              child: Text("0",
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
                                                  left: 5, top: 8, bottom: 9),
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
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapButtonShow(context);
                                                    },
                                                    child: Card(
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
                                                                              .imgUser,
                                                                      height:
                                                                          getSize(
                                                                              12),
                                                                      width:
                                                                          getSize(
                                                                              12),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ])))),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTelevision,
                                                    height: getSize(12),
                                                    width: getSize(12),
                                                    margin: getMargin(
                                                        left: 17,
                                                        top: 6,
                                                        bottom: 6))
                                              ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 20),
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
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return VerticalItemWidget();
                                        }))
                              ]))
                    ]))));
  }

  onTapButtonShow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.horizontalScreen);
  }
}
