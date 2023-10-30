import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ListclasstextItemWidget extends StatelessWidget {
  const ListclasstextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle5161x167,
          height: 140.v,
          width: 150.h,
          radius: BorderRadius.circular(
            35.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 51.v,
            bottom: 63.v,
          ),
          child: Text(
            "Class",
            style: theme.textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
