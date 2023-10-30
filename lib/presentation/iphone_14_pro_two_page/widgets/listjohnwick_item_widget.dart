import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ListjohnwickItemWidget extends StatelessWidget {
  const ListjohnwickItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 189.h,
      child: Text(
        "John wick ",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
