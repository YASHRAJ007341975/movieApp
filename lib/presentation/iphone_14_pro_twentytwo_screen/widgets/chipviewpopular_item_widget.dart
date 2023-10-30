import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewpopularItemWidget extends StatelessWidget {
  const ChipviewpopularItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Popular",
        style: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 17.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.black90007,
      selectedColor: appTheme.black90007,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.redA70011,
          width: 2.h,
        ),
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
