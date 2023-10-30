import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_four_screen/iphone_14_pro_four_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_three_screen/iphone_14_pro_three_screen.dart';

class Iphone14ProSevenScreen extends StatelessWidget {
  const Iphone14ProSevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 4.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: mediaQueryData.size.height,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 682.v,
                                            width: 391.h,
                                            margin: EdgeInsets.only(top: 55.v),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle5682x391,
                                                      height: 682.v,
                                                      width: 391.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              35.h),
                                                      alignment:
                                                          Alignment.center),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle17682x391,
                                                      height: 682.v,
                                                      width: 391.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              35.h),
                                                      alignment:
                                                          Alignment.center)
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7.h,
                                                vertical: 22.v),
                                            decoration: AppDecoration.fillGrayF,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          width: 27.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 318.v,
                                                                  right: 9.h),
                                                          child: Text(
                                                              "Money Heist EP - 5",
                                                              maxLines: 7,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall))),
                                                  SizedBox(height: 237.v),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdown,
                                                      height: 12.v,
                                                      width: 21.h,
                                                      onTap: () {
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailScreen(),));
                                                      })
                                                ]))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCamera,
                                        height: 23.v,
                                        width: 25.h,
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(
                                            right: 24.h, bottom: 55.v),
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Iphone14ProFourScreen(),));
                                        })
                                  ]))))
                ]))));
  }

  /// Navigates to the iphone14ProThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProThreeScreen.
  onTapImgArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProThreeScreen);
  }

  /// Navigates to the iphone14ProFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProFourScreen.
  onTapImgCameraone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProFourScreen);
  }
}
