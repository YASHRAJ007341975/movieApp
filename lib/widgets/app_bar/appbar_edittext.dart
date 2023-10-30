import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarEdittext extends StatelessWidget {
  AppbarEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 277.h,
        controller: controller,
        hintText: "Stranger Things",
        hintStyle: theme.textTheme.titleMedium!,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 10.v, 8.h, 13.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgDownload1removebgpreview1,
            height: 24.v,
            width: 27.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 47.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 28.h,
          top: 13.v,
          bottom: 13.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineRedATL15,
        fillColor: theme.colorScheme.primaryContainer,
      ),
    );
  }
}
