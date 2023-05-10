import '../review_select_voucher_bottomsheet/widgets/listticket_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ReviewSelectVoucherBottomsheet extends StatelessWidget {
  TextEditingController languageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(all: 24),
                decoration: AppDecoration.white
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 3),
                              child: SizedBox(
                                  width: getHorizontalSize(60),
                                  child: Divider(
                                      height: getVerticalSize(3),
                                      thickness: getVerticalSize(3),
                                      color: ColorConstant.blueGray600)))),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Text("Add Voucher",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.54)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: languageController,
                          hintText: "Type your voucher ",
                          margin: getMargin(top: 19),
                          padding: TextFormFieldPadding.PaddingT26,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 25, right: 10, bottom: 25),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgTicket)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("Your Available vouchers",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.54)))),
                      Padding(
                          padding: getPadding(top: 19),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(10));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return ListticketItemWidget();
                              })),
                      CustomButton(
                          height: getVerticalSize(70),
                          text: "Apply Voucher",
                          margin: getMargin(top: 13),
                          onTap: () {
                            onTapApplyvoucher(context);
                          })
                    ]))));
  }

  onTapApplyvoucher(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewFillScreen);
  }
}
