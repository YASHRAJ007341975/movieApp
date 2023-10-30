import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';

class Iphone14ProEightScreen extends StatelessWidget {
  const Iphone14ProEightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90007.withOpacity(0.67),
            body: Opacity(
                opacity: 0.9,
                child: Container(
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 55.v),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle5682x391,
                          height: 682.v,
                          width: 391.h,
                          radius: BorderRadius.circular(35.h),
                          alignment: Alignment.topCenter),
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: 682.v,
                              width: 391.h,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle171,
                                        height: 682.v,
                                        width: 391.h,
                                        radius: BorderRadius.circular(35.h),
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 6.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 22.h,
                                                              vertical: 45.v),
                                                      decoration: AppDecoration
                                                          .fillPrimaryContainer1,
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                width: 22.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 310
                                                                            .v,
                                                                        bottom: 5
                                                                            .v),
                                                                child: Text(
                                                                    "Audio Track",
                                                                    maxLines: 5,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: theme
                                                                        .textTheme
                                                                        .headlineSmall)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 38
                                                                            .h,
                                                                        top: 118
                                                                            .v),
                                                                child: Column(
                                                                    children: [
                                                                      Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            Container(
                                                                                width: 20.h,
                                                                                margin: EdgeInsets.only(top: 244.v),
                                                                                child: Text("Hindi", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallRegular)),
                                                                            Container(
                                                                                width: 25.h,
                                                                                margin: EdgeInsets.only(left: 17.h, top: 217.v, bottom: 3.v),
                                                                                child: Text("English", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallRegular)),
                                                                            Container(
                                                                                width: 20.h,
                                                                                margin: EdgeInsets.only(left: 7.h, top: 214.v, bottom: 3.v),
                                                                                child: Text("Disable", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallRegular)),
                                                                            Container(
                                                                                width: 22.h,
                                                                                margin: EdgeInsets.only(left: 35.h, bottom: 34.v),
                                                                                child: Text("Use SW audio decoder", maxLines: 9, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.headlineSmallRegular))
                                                                          ]),
                                                                      SizedBox(
                                                                          height:
                                                                              16.v),
                                                                      Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Container(
                                                                                margin: EdgeInsets.only(bottom: 2.v),
                                                                                padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
                                                                                decoration: AppDecoration.fillBlack900071.copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                                                                                child: Container(height: 14.v, width: 13.h, decoration: BoxDecoration(color: appTheme.black90007, borderRadius: BorderRadius.circular(7.h)))),
                                                                            Container(
                                                                                height: 24.v,
                                                                                width: 22.h,
                                                                                margin: EdgeInsets.only(left: 13.h, bottom: 2.v),
                                                                                decoration: BoxDecoration(color: appTheme.black90007.withOpacity(0.3), borderRadius: BorderRadius.circular(12.h))),
                                                                            Container(
                                                                                height: 24.v,
                                                                                width: 22.h,
                                                                                margin: EdgeInsets.only(left: 18.h, bottom: 2.v),
                                                                                decoration: BoxDecoration(color: appTheme.black90007.withOpacity(0.3), borderRadius: BorderRadius.circular(12.h))),
                                                                            Container(
                                                                                height: 26.v,
                                                                                width: 23.h,
                                                                                margin: EdgeInsets.only(left: 29.h),
                                                                                decoration: BoxDecoration(color: appTheme.blueGray100))
                                                                          ])
                                                                    ]))
                                                          ])),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdown,
                                                      height: 12.v,
                                                      width: 21.h,
                                                      margin: EdgeInsets.only(
                                                          left: 29.h,
                                                          top: 32.v),
                                                      onTap: () {
                                                        onTapImgArrowdownone(
                                                            context);
                                                      })
                                                ])))
                                  ])))
                    ])))));
  }

  /// Navigates to the iphone14ProSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProSevenScreen.
  onTapImgArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProSevenScreen);
  }
}
