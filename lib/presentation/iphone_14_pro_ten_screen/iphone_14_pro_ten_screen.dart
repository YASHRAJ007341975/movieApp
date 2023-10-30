import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';
import 'package:yashraj_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProTenScreen extends StatelessWidget {
  Iphone14ProTenScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90002,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 40.h, top: 71.v, right: 40.h),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Movi",
                                    style: theme.textTheme.displayMedium),
                                TextSpan(
                                    text: "e+",
                                    style:
                                        CustomTextStyles.displayMediumRedA70002)
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, top: 72.v),
                          child: Text("New Password",
                              style: theme.textTheme.titleLarge)),
                      CustomTextFormField(
                          controller: newpasswordController,
                          margin: EdgeInsets.only(left: 5.h, top: 14.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineDeepOrangeA),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h, top: 35.v),
                          child: Text("Confirm Password",
                              style: theme.textTheme.titleLarge)),
                      CustomTextFormField(
                          controller: confirmpasswordController,
                          margin: EdgeInsets.only(left: 5.h, top: 19.v),
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineRedTL25),
                      CustomElevatedButton(
                          height: 39.v,
                          width: 80.h,
                          text: "OK",
                          margin: EdgeInsets.only(
                              top: 51.v, right: 8.h, bottom: 5.v),
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle: CustomTextStyles.titleLargeGray200,
                          onTap: () {
                            onTapOk(context);
                          },
                          alignment: Alignment.centerRight)
                    ]))));
  }

  /// Navigates to the iphone14ProSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProSixScreen.
  onTapOk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProSixScreen);
  }
}
