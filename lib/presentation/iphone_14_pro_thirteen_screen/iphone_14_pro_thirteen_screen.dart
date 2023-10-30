import 'package:yashraj_s_application3/presentation/iphone_14_pro_eleven_screen/iphone_14_pro_eleven_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_container_screen/iphone_14_pro_two_container_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';

import '../iphone_14_pro_thirteen_screen/widgets/chipviewaction_item_widget.dart';
import '../iphone_14_pro_thirteen_screen/widgets/chipviewanime_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';

class Iphone14ProThirteenScreen extends StatelessWidget {
  const Iphone14ProThirteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    List values=['Action','Drama','Comedy','Anime','Racing','War','sci-fi','cartoon','Thriller','Horror','History','Reality','Space'];
    mediaQueryData = MediaQuery.of(context);
    double h = mediaQueryData.size.height;
    double w = mediaQueryData.size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 55.v,
          ),
          child: Column(
            children: [
              // SizedBox(height: 7.v),
              Text(
                "Choose Your Interest",
                style: CustomTextStyles.headlineSmall24,
              ),
              // SizedBox(height: 50.v),
              Wrap(
                runSpacing: 20,
                spacing: 18,
                children: List<Widget>.generate(
                    values.length, (index) => ChipviewactionItemWidget(name: values[index],)),
              ),

              SizedBox(height: 50),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Iphone14ProElevenScreen(),
                              ));
                        },
                        text: "Skip",
                        //margin: EdgeInsets.only(right: 9.h),
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Iphone14ProElevenScreen(),
                              ));
                        },
                        text: "Continue",
                      //  margin: EdgeInsets.only(left: 9.h),
                        buttonStyle: CustomButtonStyles.fillDeepOrangeA,
                      ),
                    ),
                  ],
                ),

            ],
          ),
        ),
      ),
    );
  }
}
