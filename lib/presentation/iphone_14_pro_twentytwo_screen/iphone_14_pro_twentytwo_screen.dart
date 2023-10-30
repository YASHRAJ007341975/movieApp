import '../iphone_14_pro_twentytwo_screen/widgets/chipviewaction2_item_widget.dart';
import '../iphone_14_pro_twentytwo_screen/widgets/chipviewall2_item_widget.dart';
import '../iphone_14_pro_twentytwo_screen/widgets/chipviewall_item_widget.dart';
import '../iphone_14_pro_twentytwo_screen/widgets/chipviewmovie_item_widget.dart';
import '../iphone_14_pro_twentytwo_screen/widgets/chipviewpopular_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';

class Iphone14ProTwentytwoScreen extends StatelessWidget {
  const Iphone14ProTwentytwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 47.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Sort & Filter",
                              style: CustomTextStyles.headlineMediumRed300)),
                      SizedBox(height: 16.v),
                      Divider(),
                      Padding(
                          padding: EdgeInsets.only(left: 31.h, top: 36.v),
                          child: Text("Categories",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Wrap(
                              runSpacing: 20.v,
                              spacing: 20.h,
                              children: List<Widget>.generate(
                                  3, (index) => ChipviewmovieItemWidget()))),
                      Padding(
                          padding: EdgeInsets.only(left: 33.h, top: 29.v),
                          child: Text("Regions",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: Wrap(
                              runSpacing: 20.v,
                              spacing: 20.h,
                              children: List<Widget>.generate(
                                  3, (index) => ChipviewallItemWidget()))),
                      Padding(
                          padding: EdgeInsets.only(left: 31.h, top: 38.v),
                          child: Text("Gener",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 36.v),
                      Align(
                          alignment: Alignment.center,
                          child: Wrap(
                              runSpacing: 20.v,
                              spacing: 20.h,
                              children: List<Widget>.generate(
                                  3, (index) => Chipviewaction2ItemWidget()))),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h, top: 38.v),
                          child: Text("Time/Periods",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.center,
                          child: Wrap(
                              runSpacing: 8.v,
                              spacing: 8.h,
                              children: List<Widget>.generate(
                                  3, (index) => Chipviewall2ItemWidget()))),
                      Padding(
                          padding: EdgeInsets.only(left: 38.h, top: 29.v),
                          child: Text("Sort",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 34.v),
                          child: Wrap(
                              runSpacing: 20.v,
                              spacing: 20.h,
                              children: List<Widget>.generate(
                                  2, (index) => ChipviewpopularItemWidget()))),
                      SizedBox(height: 25.v),
                      Divider(),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 19.h, top: 36.v, right: 26.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomElevatedButton(
                                        width: 165.h, text: "Reset"),
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

  /// Navigates to the iphone14ProSixteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProSixteenScreen.
  onTapApply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProSixteenScreen);
  }
}
