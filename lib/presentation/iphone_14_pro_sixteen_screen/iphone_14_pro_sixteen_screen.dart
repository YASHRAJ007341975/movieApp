import 'package:yashraj_s_application3/presentation/iphone_14_pro_three_screen/iphone_14_pro_three_screen.dart';

import '../../navigation_to_page.dart';
import '../iphone_14_pro_nineteen_screen/iphone_14_pro_nineteen_screen.dart';
import '../iphone_14_pro_sixteen_screen/widgets/listclasstext_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_edittext.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_image_2.dart';
import 'package:yashraj_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:yashraj_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProSixteenScreen extends StatelessWidget {
  Iphone14ProSixteenScreen({Key? key}) : super(key: key);

  TextEditingController download1removeController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarEdittext(
                    margin: EdgeInsets.only(left: 29.h),
                    hintText: "Stranger Things",
                    controller: download1removeController),
                actions: [
                  AppbarImage2(
                      imagePath: ImageConstant.imgImagesremovebgpreview30x26,
                      margin: EdgeInsets.fromLTRB(27.h, 12.v, 34.h, 13.v),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, top: 12.v),
                          child: Text("Top Searchs",
                              style: theme.textTheme.titleLarge)),
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(top: 21.v, right: 22.h),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: 28.v);
                                  },
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return ListclasstextItemWidget();
                                  }))),
                      Padding(
                          padding: EdgeInsets.only(top: 37.v, right: 87.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle9,
                                    height: 140.v,
                                    width: 150.h,
                                    radius: BorderRadius.circular(35.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 28.h, top: 54.v, bottom: 60.v),
                                    child: Text("The Boys",
                                        style: theme.textTheme.titleLarge))
                              ]))
                    ])),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {
            //   Navigator.pushNamed(
            //       navigatorKey.currentContext!, getCurrentRoute(type));
            // },)
          ),);
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
  //     case AppRoutes.iphone14ProTwoPage:
  //       return Iphone14ProNineteenScreen();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  /// Navigates to the iphone14ProSeventeenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProSeventeenScreen.
  // onTapImagesremovebgp(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.iphone14ProSeventeenScreen);
  // }
}
