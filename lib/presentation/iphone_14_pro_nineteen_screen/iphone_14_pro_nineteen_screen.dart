import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:yashraj_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:yashraj_s_application3/widgets/custom_bottom_bar.dart';

class Iphone14ProNineteenScreen extends StatelessWidget {
  Iphone14ProNineteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90005,
        appBar: CustomAppBar(
          centerTitle: true,
          title: Column(
            children: [
              AppbarTitle(
                text: "Favorites",
                margin: EdgeInsets.only(
                  left: 133.h,
                  right: 131.h,
                ),
              ),
              SizedBox(height: 17.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
            ],
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 19.h,
            top: 66.v,
            right: 19.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 161.v,
                      width: 144.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle5161x167,
                            height: 161.v,
                            width: 144.h,
                            radius: BorderRadius.circular(
                              35.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 20.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.outlineRedA.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder12,
                              ),
                              child: Text(
                                "9.8",
                                style: CustomTextStyles.labelLargeGray10001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle6161x167,
                      height: 161.v,
                      width: 149.h,
                      radius: BorderRadius.circular(
                        35.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 41.v),
              SizedBox(
                height: 161.v,
                width: 144.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle71,
                      height: 161.v,
                      width: 144.h,
                      radius: BorderRadius.circular(
                        35.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 18.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.outlineRedA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "7.1",
                          style: CustomTextStyles.labelLargeGray10001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomBar(
        //   onChanged: (BottomBarEnum type) {
        //     Navigator.pushNamed(
        //         navigatorKey.currentContext!, getCurrentRoute(type));
        //   },
        // ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone14ProTwoPage;
      case BottomBarEnum.Favorite:
        return "/";
      case BottomBarEnum.Downloadremovebgpreview:
        return "/";
      case BottomBarEnum.Bell:
        return "/";
      case BottomBarEnum.Menu:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone14ProTwoPage:
        return Iphone14ProNineteenScreen();
      default:
        return DefaultWidget();
    }
  }
}
