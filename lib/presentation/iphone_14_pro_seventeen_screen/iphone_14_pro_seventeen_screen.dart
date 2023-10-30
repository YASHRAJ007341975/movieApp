import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';

class Iphone14ProSeventeenScreen extends StatelessWidget {
  const Iphone14ProSeventeenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90005,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 50.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 46.v),
                      Divider(),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h, top: 36.v),
                          child: Text("Categories",
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h, top: 85.v),
                          child: Text("Regions",
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h, top: 93.v),
                          child: Text("Gener",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge)),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(left: 39.h),
                          child: Text("Time/Periods",
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 42.h, top: 85.v),
                          child: Text("Sort",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 89.v),
                      Divider(),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 22.h, top: 36.v, right: 22.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomElevatedButton(
                                        width: 165.h,
                                        text: "Reset",
                                        onTap: () {
                                          onTapReset(context);
                                        }),
                                    CustomElevatedButton(
                                        width: 165.h,
                                        text: "Apply",
                                        margin: EdgeInsets.only(left: 18.h),
                                        buttonStyle:
                                            CustomButtonStyles.fillDeepOrangeA,
                                        onTap: () {
                                          onTapApply(context);
                                        })
                                  ])))
                    ]))));
  }

  /// Navigates to the iphone14ProTwentytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwentytwoScreen.
  onTapReset(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwentytwoScreen);
  }

  /// Navigates to the iphone14ProSixteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProSixteenScreen.
  onTapApply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProSixteenScreen);
  }
}
