import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_one_screen/iphone_14_pro_one_screen.dart';

import '../../firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(SplashScreen());
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () { Navigator. push(context, MaterialPageRoute( builder: (context) => Iphone14ProOneScreen(), ), ); });
  }
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
              SizedBox(height: 189.v),
              Text(
                "MOVIE+",
                style: theme.textTheme.displayLarge,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgCaptureremovebgpreview,
                height: 66.v,
                width: 75.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
