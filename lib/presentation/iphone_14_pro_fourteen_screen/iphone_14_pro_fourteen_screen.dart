import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';
import 'package:yashraj_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProFourteenScreen extends StatelessWidget {
  Iphone14ProFourteenScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController gendervalueoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 39.v),
                    child: Column(children: [
                      SizedBox(
                          height: 287.v,
                          width: 340.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 40.h),
                                    child: Text("Fill Your Profile",
                                        style:
                                            CustomTextStyles.headlineSmall24))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrow3,
                                height: 2.v,
                                width: 24.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 1.h, top: 15.v)),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 151.adaptSize,
                                    width: 151.adaptSize,
                                    margin: EdgeInsets.only(top: 57.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray100,
                                        borderRadius:
                                            BorderRadius.circular(75.h)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: 223.v,
                                    width: 277.h,
                                    margin: EdgeInsets.only(top: 19.v),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .img360f362562495,
                                              height: 223.v,
                                              width: 277.h,
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  height: 223.v,
                                                  width: 277.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImagesremovebgpreview,
                                                            height:
                                                                35.adaptSize,
                                                            width: 35.adaptSize,
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 65.h,
                                                                    bottom:
                                                                        31.v)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 223.v,
                                                                width: 277.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .img360f362562495,
                                                                          height: 223
                                                                              .v,
                                                                          width: 277
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgImagesremovebgpreview,
                                                                          height: 35
                                                                              .adaptSize,
                                                                          width: 35
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .bottomRight,
                                                                          margin: EdgeInsets.only(
                                                                              right: 65.h,
                                                                              bottom: 31.v))
                                                                    ])))
                                                      ])))
                                        ]))),
                            CustomTextFormField(
                                width: 340.h,
                                controller: fullNameController,
                                hintText: "Full Name",
                                alignment: Alignment.bottomCenter)
                          ])),
                      CustomTextFormField(
                          controller: nameController,
                          margin:
                              EdgeInsets.only(left: 7.h, top: 21.v, right: 6.h),
                          hintText: "Nickname"),
                      CustomTextFormField(
                          controller: emailController,
                          margin:
                              EdgeInsets.only(left: 7.h, top: 23.v, right: 6.h),
                          hintText: "E-Mail",
                          textInputType: TextInputType.emailAddress),
                      CustomTextFormField(
                          controller: phoneNumberController,
                          margin:
                              EdgeInsets.only(left: 7.h, top: 24.v, right: 6.h),
                          hintText: "Phone Number",
                          textInputType: TextInputType.phone),
                      CustomTextFormField(
                          controller: gendervalueoneController,
                          margin:
                              EdgeInsets.only(left: 7.h, top: 22.v, right: 6.h),
                          hintText: "Gender",
                          textInputAction: TextInputAction.done),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h, bottom: 15.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomElevatedButton(
                                        text: "Skip",
                                        margin: EdgeInsets.only(right: 9.h),
                                        onTap: () {
                                          onTapSkip(context);
                                        })),
                                Expanded(
                                    child: CustomElevatedButton(
                                        text: "Continue",
                                        margin: EdgeInsets.only(left: 9.h),
                                        buttonStyle:
                                            CustomButtonStyles.fillDeepOrangeA,
                                        onTap: () {
                                          onTapContinue(context);
                                        }))
                              ]))
                    ])))));
  }

  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwoContainerScreen.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  }

  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwoContainerScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  }
}
