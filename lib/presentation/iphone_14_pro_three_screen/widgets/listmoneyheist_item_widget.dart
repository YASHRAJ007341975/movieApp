import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListmoneyheistItemWidget extends StatelessWidget {
  const ListmoneyheistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.outlineGray5002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 44.v,
            width: 174.h,
            margin: EdgeInsets.only(bottom: 3.v),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "EP-4",
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "MONEY HEIST",
                    style: theme.textTheme.titleLarge!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 6.h,
              bottom: 6.v,
            ),
            padding: EdgeInsets.all(5.h),
            child: CustomImageView(
              svgPath: ImageConstant.imgFadplay,
            ),
          ),
        ],
      ),
    );
  }
}
