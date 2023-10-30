import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_seven_screen/iphone_14_pro_seven_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_three_screen/iphone_14_pro_three_screen.dart';

class Iphone14ProFourScreen extends StatelessWidget {
  const Iphone14ProFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
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
                                      margin: EdgeInsets.only(top: 59.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle5682x391,
                                                height: 682.v,
                                                width: 391.h,
                                                radius:
                                                    BorderRadius.circular(35.h),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: 682.v,
                                                    width: 391.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle17,
                                                              height: 682.v,
                                                              width: 391.h,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          35.h),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 77.v,
                                                                      right:
                                                                          19.h),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        GestureDetector(
                                                                          
                                                                          child: CustomImageView(
                                                                              svgPath:
                                                                                  ImageConstant.imgBasilmusicsolid,
                                                                              height: 25.adaptSize,
                                                                              width: 25.adaptSize,
                                                                              margin: EdgeInsets.only(left: 1.h)),
                                                                              
                                                                          
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                181.v),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgLocation,
                                                                            height: 17.v,
                                                                            width: 30.h,
                                                                            alignment: Alignment.center),
                                                                        SizedBox(
                                                                            height:
                                                                                50.v),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgArrowup,
                                                                            height: 19.v,
                                                                            width: 30.h,
                                                                            alignment: Alignment.center),
                                                                        SizedBox(
                                                                            height:
                                                                                51.v),
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgMail,
                                                                            height: 17.v,
                                                                            width: 30.h,
                                                                            alignment: Alignment.center)
                                                                      ])))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 42.v),
                                      decoration: AppDecoration.fillGrayF,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 302.v),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                    width: 27.h,
                                                    child: Text(
                                                        "Money Heist EP - 1",
                                                        maxLines: 7,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: theme.textTheme
                                                            .headlineSmall))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowdown,
                                                height: 12.v,
                                                width: 21.h,
                                                margin: EdgeInsets.only(
                                                    left: 4.h, top: 219.v),
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailScreen(),));
                                                })
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 23.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  SizedBox(
                                                      width: 13.h,
                                                      child: Text("1:05:50",
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleSmall)),
                                                  Container(
                                                      height: 715.v,
                                                      width: 5.h,
                                                      margin: EdgeInsets.only(
                                                          right: 3.h),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                    height:
                                                                        715.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            5.h,
                                                                        thickness:
                                                                            5.v,
                                                                        color: appTheme
                                                                            .whiteA70001))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: SizedBox(
                                                                    height:
                                                                        301.v,
                                                                    child: VerticalDivider(
                                                                        width:
                                                                            5.h,
                                                                        thickness:
                                                                            5.v,
                                                                        color: appTheme
                                                                            .black90007)))
                                                          ])),
                                                  SizedBox(height: 10.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: SizedBox(
                                                          width: 13.h,
                                                          child: Text("0:15:51",
                                                              maxLines: 3,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall)))
                                                ]),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFadunlock,
                                                height: 36.v,
                                                width: 30.h,
                                                margin: EdgeInsets.only(
                                                    left: 19.h,
                                                    top: 765.v,
                                                    bottom: 41.v),
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Iphone14ProSevenScreen(),));
                                                })
                                          ])))
                            ]))))));
  }

  /// Navigates to the iphone14ProThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProThreeScreen.
  onTapImgArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProThreeScreen);
  }

  /// Navigates to the iphone14ProSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProSevenScreen.
  onTapImgFadunlockone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProSevenScreen);
  }
}
