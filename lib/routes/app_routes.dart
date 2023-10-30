import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_five_screen/iphone_14_pro_five_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_one_screen/iphone_14_pro_one_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_container_screen/iphone_14_pro_two_container_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_three_screen/iphone_14_pro_three_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_four_screen/iphone_14_pro_four_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_seven_screen/iphone_14_pro_seven_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_six_screen/iphone_14_pro_six_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_eight_screen/iphone_14_pro_eight_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_fifteen_screen/iphone_14_pro_fifteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_nine_screen/iphone_14_pro_nine_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_ten_screen/iphone_14_pro_ten_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_thirteen_screen/iphone_14_pro_thirteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_fourteen_screen/iphone_14_pro_fourteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_eleven_screen/iphone_14_pro_eleven_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_twentytwo_screen/iphone_14_pro_twentytwo_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_nineteen_screen/iphone_14_pro_nineteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_twenty_screen/iphone_14_pro_twenty_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_sixteen_screen/iphone_14_pro_sixteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_seventeen_screen/iphone_14_pro_seventeen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_twentyone_screen/iphone_14_pro_twentyone_screen.dart';
import 'package:yashraj_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String iphone14ProFiveScreen = '/iphone_14_pro_five_screen';

  static const String iphone14ProOneScreen = '/iphone_14_pro_one_screen';

  static const String iphone14ProTwoPage = '/iphone_14_pro_two_page';

  static const String iphone14ProTwoContainerScreen =
      '/iphone_14_pro_two_container_screen';

  static const String iphone14ProThreeScreen = '/iphone_14_pro_three_screen';

  static const String iphone14ProFourScreen = '/iphone_14_pro_four_screen';

  static const String iphone14ProSevenScreen = '/iphone_14_pro_seven_screen';

  static const String iphone14ProSixScreen = '/iphone_14_pro_six_screen';

  static const String iphone14ProEightScreen = '/iphone_14_pro_eight_screen';

  static const String iphone14ProFifteenScreen =
      '/iphone_14_pro_fifteen_screen';

  static const String iphone14ProNineScreen = '/iphone_14_pro_nine_screen';

  static const String iphone14ProTenScreen = '/iphone_14_pro_ten_screen';

  static const String iphone14ProThirteenScreen =
      '/iphone_14_pro_thirteen_screen';

  static const String iphone14ProFourteenScreen =
      '/iphone_14_pro_fourteen_screen';

  static const String iphone14ProElevenScreen = '/iphone_14_pro_eleven_screen';

  static const String iphone14ProTwentytwoScreen =
      '/iphone_14_pro_twentytwo_screen';

  static const String iphone14ProNineteenScreen =
      '/iphone_14_pro_nineteen_screen';

  static const String iphone14ProTwentyScreen = '/iphone_14_pro_twenty_screen';

  static const String iphone14ProSixteenScreen =
      '/iphone_14_pro_sixteen_screen';

  static const String iphone14ProSeventeenScreen =
      '/iphone_14_pro_seventeen_screen';

  static const String iphone14ProTwentyoneScreen =
      '/iphone_14_pro_twentyone_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    iphone14ProFiveScreen: (context) => Iphone14ProFiveScreen(),
    iphone14ProOneScreen: (context) => Iphone14ProOneScreen(),
    // iphone14ProTwoContainerScreen: (context) => Iphone14ProTwoContainerScreen(),
    iphone14ProThreeScreen: (context) => MovieDetailScreen(),
    iphone14ProFourScreen: (context) => Iphone14ProFourScreen(),
    iphone14ProSevenScreen: (context) => Iphone14ProSevenScreen(),
    iphone14ProSixScreen: (context) => Iphone14ProSixScreen(),
    iphone14ProEightScreen: (context) => Iphone14ProEightScreen(),
    // iphone14ProFifteenScreen: (context) => Iphone14ProFifteenScreen(),
    iphone14ProNineScreen: (context) => Iphone14ProNineScreen(),
    iphone14ProTenScreen: (context) => Iphone14ProTenScreen(),
    iphone14ProThirteenScreen: (context) => Iphone14ProThirteenScreen(),
    iphone14ProFourteenScreen: (context) => Iphone14ProFourteenScreen(),
    iphone14ProElevenScreen: (context) => Iphone14ProElevenScreen(),
    iphone14ProTwentytwoScreen: (context) => Iphone14ProTwentytwoScreen(),
    iphone14ProNineteenScreen: (context) => Iphone14ProNineteenScreen(),
    iphone14ProTwentyScreen: (context) => Iphone14ProTwentyScreen(),
    iphone14ProSixteenScreen: (context) => Iphone14ProSixteenScreen(),
    iphone14ProSeventeenScreen: (context) => Iphone14ProSeventeenScreen(),
    iphone14ProTwentyoneScreen: (context) => Iphone14ProTwentyoneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
