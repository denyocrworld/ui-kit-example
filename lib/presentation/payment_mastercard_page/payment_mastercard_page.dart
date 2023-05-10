import 'package:deny_s_application5/core/app_export.dart';
import 'package:deny_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PaymentMastercardPage extends StatefulWidget {
  @override
  _PaymentMastercardPageState createState() => _PaymentMastercardPageState();
  onTapTxtButtonProgress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userEmptyScreen);
  }
}

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class _PaymentMastercardPageState extends State<PaymentMastercardPage>
    with AutomaticKeepAliveClientMixin<PaymentMastercardPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardnumberController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 20, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: nameController,
                                    hintText: "Jonathan Anderson",
                                    fontStyle: TextFormFieldFontStyle
                                        .RalewaySemiBold12Bluegray80001,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 25,
                                            right: 16,
                                            bottom: 25),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(
                                                    getHorizontalSize(50)),
                                                bottomRight: Radius.circular(
                                                    getHorizontalSize(50)))),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgUser20x20)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(70))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: cardnumberController,
                                    hintText: "1222 3443 9881 1222",
                                    margin: getMargin(top: 15),
                                    fontStyle: TextFormFieldFontStyle
                                        .MontserratSemiBold12Bluegray80001,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 25,
                                            right: 16,
                                            bottom: 25),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgVideocamera)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(70))),
                                Padding(
                                    padding: getPadding(top: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Container(
                                                  margin: getMargin(right: 5),
                                                  padding: getPadding(
                                                      left: 15,
                                                      top: 25,
                                                      right: 15,
                                                      bottom: 25),
                                                  decoration: AppDecoration
                                                      .fillGray100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder12),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2,
                                                                bottom: 2),
                                                            child: Text(
                                                                "11/05/2023",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold12Bluegray80001
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.36)))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCalendar,
                                                            height: getSize(20),
                                                            width: getSize(20),
                                                            margin: getMargin(
                                                                left: 41))
                                                      ]))),
                                          Expanded(
                                              child: CustomTextFormField(
                                                  focusNode: FocusNode(),
                                                  controller: cvvController,
                                                  hintText: "CVV",
                                                  margin: getMargin(left: 5),
                                                  padding: TextFormFieldPadding
                                                      .PaddingT26,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          left: 16,
                                                          top: 25,
                                                          right: 10,
                                                          bottom: 25),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVideocamera)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                                  70))))
                                        ])),
                                CustomImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: getVerticalSize(1),
                                    width: getHorizontalSize(100),
                                    margin: getMargin(top: 30)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtButtonProgress(context);
                                    },
                                    child: Container(
                                        width: getHorizontalSize(327),
                                        margin: getMargin(top: 10),
                                        padding: getPadding(
                                            left: 30,
                                            top: 25,
                                            right: 145,
                                            bottom: 25),
                                        decoration: AppDecoration
                                            .txtFillIndigoA400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtCircleBorder35),
                                        child: Text("Next",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRalewaySemiBold16)))
                              ]))
                    ])))));
  }

  onTapTxtButtonProgress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userEmptyScreen);
  }
}
