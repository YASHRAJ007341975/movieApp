import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:yashraj_s_application3/widgets/app_bar/custom_app_bar.dart';

class Iphone14ProTwentyoneScreen extends StatelessWidget {
  const Iphone14ProTwentyoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                centerTitle: true,
                title: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 37.h, right: 80.h),
                      child: Row(children: [
                        AppbarImage1(
                            svgPath: ImageConstant.imgArrow3,
                            margin: EdgeInsets.only(top: 16.v, bottom: 15.v),
                            onTap: () {
                              onTapArrowsixone(context);
                            }),
                        AppbarTitle(
                            text: "Privacy & Policy",
                            margin: EdgeInsets.only(left: 33.h),
                            onTap: () {
                              onTapPrivacypolicy(context);
                            })
                      ])),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          SizedBox(width: double.maxFinite, child: Divider()))
                ]),
                styleType: Style.bgFill),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 37.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.h),
                        child: Column(children: [
                          SizedBox(
                              width: 341.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "1)",
                                        style: theme.textTheme.titleMedium),
                                    TextSpan(
                                        text: ".",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text:
                                            "A privacy policy is a statement or ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text: "legal document",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text:
                                            " (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.",
                                        style: theme.textTheme.titleSmall)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 45.v),
                          SizedBox(
                              width: 341.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "2)",
                                        style: theme.textTheme.titleMedium),
                                    TextSpan(
                                        text: ".  ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text:
                                            "A privacy policy is a statement or ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text: "legal document",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text:
                                            " (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.",
                                        style: theme.textTheme.titleSmall)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 67.v),
                          SizedBox(
                              width: 341.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "3)",
                                        style: theme.textTheme.titleMedium),
                                    TextSpan(
                                        text: ".",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text:
                                            "A privacy policy is a statement or ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text: "legal document",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text:
                                            " (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.",
                                        style: theme.textTheme.titleSmall)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 36.v),
                          SizedBox(
                              width: 341.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "1).",
                                        style: theme.textTheme.titleMedium),
                                    TextSpan(
                                        text:
                                            "A privacy policy is a statement or ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text: "legal document",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text:
                                            " (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.A privacy policy is a statement or ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text: "legal document",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text:
                                            " (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.A privacy policy is a statement or ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text: "legal document",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text:
                                            " (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.A privacy policy is a statement or ",
                                        style: theme.textTheme.titleSmall),
                                    TextSpan(
                                        text: "legal document",
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)),
                                    TextSpan(
                                        text:
                                            " (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.",
                                        style: theme.textTheme.titleSmall)
                                  ]),
                                  textAlign: TextAlign.left))
                        ]))))));
  }

  /// Navigates to the iphone14ProTwentyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwentyScreen.
  onTapArrowsixone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwentyScreen);
  }

  /// Navigates to the iphone14ProTwentyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwentyScreen.
  onTapPrivacypolicy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwentyScreen);
  }
}
