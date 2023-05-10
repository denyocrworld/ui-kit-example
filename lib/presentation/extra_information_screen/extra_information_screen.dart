import '../extra_information_screen/widgets/layout5_item_widget.dart';
import '../extra_information_screen/widgets/layout7_item_widget.dart';
import '../extra_information_screen/widgets/layout9_item_widget.dart';
import '../extra_information_screen/widgets/listtype_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:deny_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:deny_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:deny_s_application5/presentation/extra_information_success_bottomsheet/extra_information_success_bottomsheet.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ExtraInformationScreen extends StatelessWidget {
  TextEditingController priceController = TextEditingController();

  TextEditingController formvaluefillController = TextEditingController();

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
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Add Listing")),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 54, right: 4, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(297),
                                  margin: getMargin(right: 50),
                                  child: Text(
                                      "Almost finish, complete\nthe listing",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayMedium25
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.75)))),
                              Padding(
                                  padding: getPadding(top: 33),
                                  child: Text("Sell Price",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: priceController,
                                  hintText: " 180,000",
                                  margin: getMargin(top: 19, right: 20),
                                  fontStyle: TextFormFieldFontStyle
                                      .MontserratSemiBold12Bluegray80001,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 25,
                                          right: 16,
                                          bottom: 25),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgAlarm)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(70))),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("Rent Price",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: formvaluefillController,
                                  margin: getMargin(top: 19, right: 20),
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 25,
                                          right: 16,
                                          bottom: 25),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgAlarm)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(70))),
                              Padding(
                                  padding: getPadding(left: 1, top: 15),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          2, (index) => Layout5ItemWidget()))),
                              Padding(
                                  padding: getPadding(top: 38),
                                  child: Text("Property Features",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding: getPadding(top: 17, right: 20),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(15));
                                      },
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return ListtypeItemWidget();
                                      })),
                              Padding(
                                  padding: getPadding(left: 1, top: 34),
                                  child: Text("Total Rooms",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18)),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: Wrap(
                                      runSpacing: getVerticalSize(5),
                                      spacing: getHorizontalSize(5),
                                      children: List<Widget>.generate(
                                          4, (index) => Layout7ItemWidget()))),
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
                                          7, (index) => Layout9ItemWidget()))),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgProgressbargradient,
                                  height: getVerticalSize(1),
                                  width: getHorizontalSize(100),
                                  margin: getMargin(left: 114, top: 49))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "Finish",
                margin: getMargin(left: 25, right: 23, bottom: 24),
                onTap: () {
                  onTapFinish(context);
                })));
  }

  onTapFinish(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => ExtraInformationSuccessBottomsheet(),
        isScrollControlled: true);
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
