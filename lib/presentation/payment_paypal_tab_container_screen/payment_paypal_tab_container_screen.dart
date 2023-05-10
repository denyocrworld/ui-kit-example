import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/presentation/payment_mastercard_page/payment_mastercard_page.dart';
import 'package:deny_s_application5/presentation/payment_paypal_page/payment_paypal_page.dart';
import 'package:deny_s_application5/widgets/custom_button.dart';
import 'package:deny_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PaymentPaypalTabContainerScreen extends StatefulWidget {
  @override
  _PaymentPaypalTabContainerScreenState createState() =>
      _PaymentPaypalTabContainerScreenState();
  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}

// ignore_for_file: must_be_immutable
class _PaymentPaypalTabContainerScreenState
    extends State<PaymentPaypalTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController walletoptionController;

  @override
  void initState() {
    super.initState();
    walletoptionController = TabController(length: 3, vsync: this);
  }

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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 24, top: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              variant:
                                                  IconButtonVariant.FillGray100,
                                              shape: IconButtonShape
                                                  .CircleBorder25,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              onTap: () {
                                                onTapBtnArrowleft(context);
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft)),
                                          CustomButton(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(66),
                                              text: "skip",
                                              margin:
                                                  getMargin(top: 7, bottom: 5),
                                              variant:
                                                  ButtonVariant.FillGray100,
                                              shape: ButtonShape.CircleBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll10,
                                              fontStyle: ButtonFontStyle
                                                  .MontserratRegular12Bluegray800,
                                              onTap: () {
                                                onTapSkip(context);
                                              })
                                        ]))),
                            Container(
                                width: getHorizontalSize(251),
                                margin: getMargin(left: 24, top: 55),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Add your \n",
                                          style: TextStyle(
                                              color:
                                                  ColorConstant.blueGray80001,
                                              fontSize: getFontSize(25),
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing:
                                                  getHorizontalSize(0.75))),
                                      TextSpan(
                                          text: "payment method 💸",
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
                                padding: getPadding(left: 24, top: 22),
                                child: Text(
                                    "You can edit this later on your account setting.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.36)))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        getMargin(left: 24, top: 51, right: 24),
                                    padding: getPadding(
                                        left: 24,
                                        top: 23,
                                        right: 24,
                                        bottom: 23),
                                    decoration: AppDecoration.fillIndigoA400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder25),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Jonathan",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanBold12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36))),
                                          Padding(
                                              padding: getPadding(top: 42),
                                              child: Text("user@email.com",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold18)),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: Row(children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Balance",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewayRomanSemiBold8
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.24))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text(" 12,290",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratSemiBold12WhiteA700
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.36))))
                                                    ]),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgComputer,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin: getMargin(
                                                        left: 208, top: 9))
                                              ]))
                                        ]))),
                            Container(
                                height: getVerticalSize(50),
                                width: getHorizontalSize(368),
                                margin: getMargin(top: 15),
                                child: TabBar(
                                    controller: walletoptionController,
                                    labelColor: ColorConstant.whiteA700,
                                    labelStyle: TextStyle(
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700),
                                    unselectedLabelColor:
                                        ColorConstant.blueGray600,
                                    unselectedLabelStyle: TextStyle(
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500),
                                    indicator: BoxDecoration(
                                        color: ColorConstant.indigoA400,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(25))),
                                    tabs: [
                                      Tab(
                                          child: Text("Paypal",
                                              overflow: TextOverflow.ellipsis)),
                                      Tab(
                                          child: Text("MasterCard",
                                              overflow: TextOverflow.ellipsis)),
                                      Tab(
                                          child: Text("Visa",
                                              overflow: TextOverflow.ellipsis))
                                    ])),
                            Container(
                                height: getVerticalSize(305),
                                child: TabBarView(
                                    controller: walletoptionController,
                                    children: [
                                      PaymentPaypalPage(),
                                      PaymentMastercardPage(),
                                      PaymentMastercardPage()
                                    ]))
                          ])))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
