import '../top_locations_screen/widgets/data_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TopLocationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding: getPadding(
                                      left: 24, top: 20, right: 24, bottom: 20),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconButton(
                                            height: 50,
                                            width: 50,
                                            margin: getMargin(top: 3),
                                            variant:
                                                IconButtonVariant.FillGray100,
                                            shape:
                                                IconButtonShape.CircleBorder25,
                                            padding:
                                                IconButtonPadding.PaddingAll16,
                                            onTap: () {
                                              onTapBtnArrowleft(context);
                                            },
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleft)),
                                        Padding(
                                            padding: getPadding(top: 42),
                                            child: Text("Top Locations",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRalewayBold25
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.75)))),
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Text(
                                                "Find the best recommendations place to live",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanRegular12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.36)))),
                                        Padding(
                                            padding: getPadding(top: 36),
                                            child: GridView.builder(
                                                shrinkWrap: true,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        mainAxisExtent:
                                                            getVerticalSize(
                                                                227),
                                                        crossAxisCount: 2,
                                                        mainAxisSpacing:
                                                            getHorizontalSize(
                                                                7),
                                                        crossAxisSpacing:
                                                            getHorizontalSize(
                                                                7)),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: 6,
                                                itemBuilder: (context, index) {
                                                  return DataItemWidget(
                                                      onTapColumnshape: () {
                                                    onTapColumnshape(context);
                                                  });
                                                }))
                                      ]))))
                    ]))));
  }

  onTapColumnshape(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.topLocationsLocationDetailScreen);
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
