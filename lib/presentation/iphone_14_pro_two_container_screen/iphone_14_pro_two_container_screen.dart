import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_fifteen_screen/iphone_14_pro_fifteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_nineteen_screen/iphone_14_pro_nineteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_sixteen_screen/iphone_14_pro_sixteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_twenty_screen/iphone_14_pro_twenty_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';
import 'package:yashraj_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProTwoContainerScreen extends StatelessWidget {
  Iphone14ProTwoContainerScreen({Key? key}) : super(key: key);
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            // body: Navigator(
            //     key: navigatorKey,
            //     initialRoute: AppRoutes.iphone14ProTwoPage,
            //     onGenerateRoute: (routeSetting) => PageRouteBuilder(
            //         pageBuilder: (ctx, ani, ani1) =>
            //             getCurrentPage(routeSetting.name!),
            //         transitionDuration: Duration(seconds: 0))),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {
            //   Navigator.pushNamed(
            //       navigatorKey.currentContext!, getCurrentRoute(type));
            // })
        )
        );
  }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.iphone14ProTwoPage;
  //     case BottomBarEnum.Favorite:
  //       return AppRoutes.iphone14ProNineteenScreen;
  //     case BottomBarEnum.Downloadremovebgpreview:
  //       return AppRoutes.iphone14ProSixteenScreen;
  //     case BottomBarEnum.Bell:
  //       return AppRoutes.iphone14ProFifteenScreen;
  //     case BottomBarEnum.Menu:
  //       return AppRoutes.iphone14ProTwentyScreen;
  //     default:
  //       return "/";
  //   }
  // }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.iphone14ProTwoPage:
  //       return MovieHome();
  //       break;
  //     case AppRoutes.iphone14ProNineteenScreen:
  //       return Iphone14ProNineteenScreen();
  //     case AppRoutes.iphone14ProSixteenScreen:
  //       return Iphone14ProSixteenScreen();
  //     case AppRoutes.iphone14ProFifteenScreen:
  //       return Iphone14ProFifteenScreen();
  //     case AppRoutes.iphone14ProTwentyScreen:
  //       return Iphone14ProTwentyScreen();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
