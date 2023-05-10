import '../summary_change_payment_bottomsheet/widgets/paymentlist_item_widget.dart';
import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:deny_s_application5/presentation/summary_success_bottomsheet/summary_success_bottomsheet.dart';

class SummaryChangePaymentBottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                decoration: AppDecoration.white
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 3),
                          child: SizedBox(
                              width: getHorizontalSize(60),
                              child: Divider(
                                  height: getVerticalSize(3),
                                  thickness: getVerticalSize(3),
                                  color: ColorConstant.blueGray600))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 33),
                              child: Text("Change Payment",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayBold18.copyWith(
                                      letterSpacing:
                                          getHorizontalSize(0.54))))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(197),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 17),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(10));
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return PaymentlistItemWidget();
                                  }))),
                      CustomButton(
                          height: getVerticalSize(70),
                          text: "Select Payment",
                          margin: getMargin(left: 24, top: 50, right: 24),
                          onTap: () {
                            onTapSelectpayment(context);
                          })
                    ]))));
  }

  onTapSelectpayment(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => SummarySuccessBottomsheet(),
        isScrollControlled: true);
  }
}
