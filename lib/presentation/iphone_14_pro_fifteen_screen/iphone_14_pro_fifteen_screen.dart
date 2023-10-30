import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:yashraj_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:yashraj_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProFifteenScreen extends StatelessWidget {
  Iphone14ProFifteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 46.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrow3,
                    margin:
                        EdgeInsets.only(left: 22.h, top: 28.v, bottom: 25.v),
                    onTap: () {
                      onTapArrowthreeone(context);
                    }),
                title: AppbarSubtitle(
                    text: "Notification", margin: EdgeInsets.only(left: 15.h))),
            body: SizedBox(

                width: double.maxFinite,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 24.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle5161x167,
                                    height: 140.v,
                                    width: 144.h,
                                    radius: BorderRadius.circular(35.h),
                                    onTap: () {
                                      onTapImgImage(context);
                                    }),
                                SizedBox(height: 26.v),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle6161x167,
                                    height: 161.v,
                                    width: 149.h,
                                    radius: BorderRadius.circular(35.h),
                                    alignment: Alignment.center),
                                SizedBox(height: 26.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle71,
                                    height: 161.v,
                                    width: 144.h,
                                    radius: BorderRadius.circular(35.h)),
                                SizedBox(height: 32.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle9,
                                    height: 130.v,
                                    width: 144.h,
                                    radius: BorderRadius.circular(35.h))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 24.h, top: 46.v, right: 20.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text("Class",
                                      style: theme.textTheme.titleLarge),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 54.h, top: 6.v, bottom: 3.v),
                                      child: Text("12/12/2024",
                                          style: theme.textTheme.labelLarge))
                                ]),
                                SizedBox(height: 12.v),
                                Text("Season - 2",
                                    style: theme.textTheme.labelLarge),
                                SizedBox(height: 16.v),
                                Text("Coming Soon",
                                    style: CustomTextStyles.labelMediumOnError),
                                SizedBox(height: 76.v),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 64.h,
                                          child: Text("Stranger Things",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 45.h,
                                              top: 8.v,
                                              bottom: 16.v),
                                          child: Text("18/12/2024",
                                              style:
                                                  theme.textTheme.labelLarge))
                                    ]),
                                SizedBox(height: 5.v),
                                Text("Season - 3",
                                    style: theme.textTheme.labelLarge),
                                SizedBox(height: 9.v),
                                Text("Coming Soon",
                                    style:
                                        CustomTextStyles.labelMediumRedA70006),
                                Spacer(),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 78.h,
                                          child: Text("House Of Dragon",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  theme.textTheme.titleMedium)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 31.h,
                                              top: 7.v,
                                              bottom: 23.v),
                                          child: Text("1/01/2025",
                                              style:
                                                  theme.textTheme.labelLarge))
                                    ]),
                                SizedBox(height: 14.v),
                                Text("Season - 2",
                                    style: theme.textTheme.labelLarge),
                                SizedBox(height: 17.v),
                                Text("Coming Soon",
                                    style: theme.textTheme.labelMedium),
                                SizedBox(height: 102.v),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 48.h,
                                          child: Text("The Boys",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  theme.textTheme.titleLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 61.h,
                                              top: 8.v,
                                              bottom: 29.v),
                                          child: Text("12/02/2025",
                                              style:
                                                  theme.textTheme.labelLarge))
                                    ]),
                                SizedBox(height: 10.v),
                                Text("Season - 3",
                                    style: theme.textTheme.labelLarge),
                                SizedBox(height: 13.v),
                                Text("Coming Soon",
                                    style:
                                        CustomTextStyles.labelMediumWhiteA70001)
                              ]))
                    ])),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {
            //   Navigator.pushNamed(
            //       navigatorKey.currentContext!, getCurrentRoute(type));
            // }
            // )
        )
    );
  }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.iphone14ProTwoPage;
  //     case BottomBarEnum.Favorite:
  //       return "/";
  //     case BottomBarEnum.Downloadremovebgpreview:
  //       return "/";
  //     case BottomBarEnum.Bell:
  //       return "/";
  //
  //     case BottomBarEnum.Menu:
  //       return "/";
  //     default:
  //       return "/";
  //   }
  // }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.iphone14ProTwoPage:
  //       return MovieHome();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwoContainerScreen.
  onTapArrowthreeone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  }

  /// Navigates to the iphone14ProFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProFourScreen.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProFourScreen);
  }
}
