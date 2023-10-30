import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';
import 'package:yashraj_s_application3/widgets/custom_outlined_button.dart';

class Iphone14ProOneScreen extends StatelessWidget {
  const Iphone14ProOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 48.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Movi",
                                style: theme.textTheme.displayMedium),
                            TextSpan(
                                text: "e+",
                                style: CustomTextStyles.displayMediumRedA70002)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 48.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: 550.v,
                              width: 361.h,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                top: 7.v, bottom: 31.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 39.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup87),
                                                    fit: BoxFit.cover)),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Spacer(),
                                                  Container(
                                                      width: 310.h,
                                                      margin: EdgeInsets.only(
                                                          left: 9.h,
                                                          right: 40.h),
                                                      child: Text(
                                                          "Watch your favourite movie or series on only one platform. you can watch it anytime and anywhre",
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: CustomTextStyles
                                                              .titleMedium16)),
                                                  CustomElevatedButton(
                                                      height: 49.v,
                                                      text: "Sing in",
                                                      margin: EdgeInsets.only(
                                                          top: 40.v,
                                                          right: 31.h),
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .fillPrimary,
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .titleLargeBlack90007,
                                                      onTap: () {
                                                        onTapSingin(context);
                                                      })
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage1,
                                        height: 281.v,
                                        width: 216.h,
                                        radius: BorderRadius.circular(50.h),
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(left: 59.h)),
                                    CustomOutlinedButton(
                                        width: 330.h,
                                        text: "Continue with Google",
                                        leftIcon: Container(
                                            margin:
                                                EdgeInsets.only(right: 16.h),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVector)),
                                        onTap: () {
                                          onTapContinuewith(context);
                                        },
                                        alignment: Alignment.bottomLeft)
                                  ])))
                    ]))));
  }

  /// Navigates to the iphone14ProFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProFiveScreen.
  onTapSingin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProFiveScreen);
  }

  /// Navigates to the iphone14ProFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProFiveScreen.
  onTapContinuewith(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProFiveScreen);
  }
}
