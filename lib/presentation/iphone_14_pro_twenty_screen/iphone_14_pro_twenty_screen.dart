import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_one_screen/iphone_14_pro_one_screen.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:yashraj_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';

class Iphone14ProTwentyScreen extends StatelessWidget {
  const Iphone14ProTwentyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 37.v),
                  SizedBox(
                      height: 280.v,
                      width: double.maxFinite,
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("Admin",
                                    style: theme.textTheme.headlineMedium)),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 223.v,
                                    width: 277.h,
                                    margin: EdgeInsets.only(bottom: 19.v),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 151.adaptSize,
                                                  width: 151.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.blueGray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              75.h)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  height: 223.v,
                                                  width: 277.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .img360f362562495,
                                                            height: 223.v,
                                                            width: 277.h,
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 223.v,
                                                                width: 277.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgImagesremovebgpreview,
                                                                          height: 35
                                                                              .adaptSize,
                                                                          width: 35
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .bottomRight,
                                                                          margin: EdgeInsets.only(
                                                                              right: 65.h,
                                                                              bottom: 31.v)),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: SizedBox(
                                                                              height: 223.v,
                                                                              width: 277.h,
                                                                              child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                CustomImageView(imagePath: ImageConstant.img360f362562495, height: 223.v, width: 277.h, alignment: Alignment.center),
                                                                                CustomImageView(imagePath: ImageConstant.imgImagesremovebgpreview, height: 35.adaptSize, width: 35.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 65.h, bottom: 31.v))
                                                                              ])))
                                                                    ])))
                                                      ])))
                                        ]))),
                            CustomAppBar(
                                height: 52.v,
                                centerTitle: true,
                                title: Column(children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 31.h, right: 138.h),
                                      child: Row(children: [
                                        AppbarImage1(
                                            svgPath: ImageConstant.imgArrow3,
                                            margin: EdgeInsets.only(
                                                top: 16.v, bottom: 15.v),
                                            onTap: () {
                                              onTapArrowthreeone(context);
                                            }),
                                        AppbarTitle(
                                            text: "Settings",
                                            margin: EdgeInsets.only(left: 83.h),
                                            onTap: () {
                                              onTapSettings(context);
                                            })
                                      ])),
                                  SizedBox(height: 16.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                          width: double.maxFinite,
                                          child: Divider()))
                                ]),
                                styleType: Style.bgFill)
                          ])),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 59.h, vertical: 1.v),
                      child: Column(children: [
                        Text("admin123@gmail.com",
                            style: CustomTextStyles.titleMedium18),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 67.v, right: 9.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtPrivacypolicy(context);
                                          },
                                          child: Text("Privacy & Policy",
                                              style: CustomTextStyles
                                                  .titleLarge22)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrow5,
                                          height: 3.v,
                                          width: 35.h,
                                          margin: EdgeInsets.only(
                                              top: 10.v, bottom: 13.v),
                                          onTap: () {
                                            onTapImgArrowfiveone(context);
                                          })
                                    ]))),
                        SizedBox(height: 52.v),
                        CustomElevatedButton(
                            width: 165.h,
                            text: "Logout",
                            buttonTextStyle: CustomTextStyles.titleMedium19,
                            onTap: () {
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Iphone14ProOneScreen(),),(route) => false,);
                            }),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwoContainerScreen.
  onTapArrowthreeone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  }

  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwoContainerScreen.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  }

  /// Navigates to the iphone14ProTwentyoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwentyoneScreen.
  onTapTxtPrivacypolicy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwentyoneScreen);
  }

  /// Navigates to the iphone14ProTwentyoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwentyoneScreen.
  onTapImgArrowfiveone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwentyoneScreen);
  }

  /// Navigates to the iphone14ProOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProOneScreen.
  onTapLogout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProOneScreen);
  }
}
