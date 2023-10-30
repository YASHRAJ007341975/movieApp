import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewactionItemWidget extends StatefulWidget {
  final String name;
  const ChipviewactionItemWidget({Key? key, required this.name})
      : super(
          key: key,
        );

  @override
  State<ChipviewactionItemWidget> createState() => _ChipviewactionItemWidgetState();
}

class _ChipviewactionItemWidgetState extends State<ChipviewactionItemWidget> {
  bool selected=false;
  @override
  Widget build(BuildContext context) {

    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        widget.name,


        style: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 17.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,


        ),
      ),




      selected: selected,
      backgroundColor:appTheme.redA70002,
      selectedColor: appTheme.black90006,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      onSelected: (value) {
        selected=value;
        setState(() {

        });
      },
    );
  }
}
