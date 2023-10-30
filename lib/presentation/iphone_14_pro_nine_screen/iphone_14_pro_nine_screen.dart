import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';
import 'package:yashraj_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProNineScreen extends StatelessWidget {
  Iphone14ProNineScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController edittextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 51.v),
                child: Column(
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
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Forgot Password",
                              style: theme.textTheme.displaySmall)),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h, top: 34.v),
                          child:
                              Text("Email", style: theme.textTheme.titleLarge)),
                      SizedBox(height: 15.v),
                      CustomTextFormField(
                          controller: emailController,
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineDeepOrangeA),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                          height: 39.v,
                          width: 145.h,
                          text: "Send Code",
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle: theme.textTheme.titleLarge!,
                          alignment: Alignment.centerRight),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h, top: 8.v),
                          child: Text("Enter Code",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 18.v),
                      CustomTextFormField(
                          controller: edittextController,
                          textInputAction: TextInputAction.done,
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineRedTL25),
                      CustomElevatedButton(
                          height: 39.v,
                          width: 80.h,
                          text: "OK",
                          margin: EdgeInsets.only(
                              top: 34.v, right: 10.h, bottom: 5.v),
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          buttonTextStyle: CustomTextStyles.titleLargeGray200,
                          onTap: () {
                            onTapOk(context);
                          },
                          alignment: Alignment.centerRight)
                    ]))));
  }

  /// Navigates to the iphone14ProTenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTenScreen.
  onTapOk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTenScreen);
  }
}
