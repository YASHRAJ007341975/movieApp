import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/navigation_to_page.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:yashraj_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:yashraj_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';
import 'package:yashraj_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProElevenScreen extends StatelessWidget {
  Iphone14ProElevenScreen({Key? key}) : super(key: key);

  TextEditingController roleoneController = TextEditingController();

  TextEditingController usernameoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController genderController = TextEditingController();
  FirebaseAuth _auth=FirebaseAuth.instance;
  FirebaseFirestore _firestore =FirebaseFirestore.instance;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 54.h,
                // leading: AppbarImage(
                //     svgPath: ImageConstant.imgArrow3,
                //     margin:
                //         EdgeInsets.only(left: 30.h, top: 28.v, bottom: 25.v),
                //     onTap: () {
                //       onTapArrowthreeone(context);
                //     }),
                title: AppbarSubtitle(
                    text: " Your Profile",
                    margin: EdgeInsets.only(left: 19.h))),
            body: Container(
              padding: EdgeInsets.only(top: 50),
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0.31),
                        end: Alignment(0.5, 0.84),
                        colors: [appTheme.gray800, appTheme.gray90002])),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.h, vertical: 20.v),
                        child: Column(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,children: [
                          // SizedBox(
                          //     height: 145.v,
                          //     width: 137.h,
                          //     child: Stack(
                          //         alignment: Alignment.bottomRight,
                          //         children: [
                          //           CustomImageView(
                          //               imagePath:
                          //                   ImageConstant.imgEllipse1134x137,
                          //               height: 134.v,
                          //               width: 137.h,
                          //               radius: BorderRadius.circular(68.h),
                          //               alignment: Alignment.topCenter),
                          //           CustomImageView(
                          //               imagePath: ImageConstant
                          //                   .imgImagesremovebgpreview,
                          //               height: 35.adaptSize,
                          //               width: 35.adaptSize,
                          //               alignment: Alignment.bottomRight,
                          //               margin: EdgeInsets.only(right: 6.h))
                          //         ])),
                          CustomTextFormField(
                              controller: roleoneController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 41.v, right: 6.h),
                              hintText: "Adminstrator"),
                          CustomTextFormField(
                              controller: usernameoneController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 21.v, right: 6.h),
                              hintText: "Admin"),
                          CustomTextFormField(
                              controller: emailController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 23.v, right: 6.h),
                              hintText: "Admin123@gmail.com",
                              textInputType: TextInputType.emailAddress),
                          CustomTextFormField(
                              controller: mobileNoController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 24.v, right: 6.h),
                              hintText: "7096772289",
                              textInputType: TextInputType.phone),
                          CustomTextFormField(
                              controller: genderController,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 22.v, right: 6.h),
                              hintText: "Male",
                              textInputAction: TextInputAction.done),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h, bottom: 48.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomElevatedButton(onTap: () {
                                          updateprofile();
                                        ScaffoldMessenger.of(context).showSnackBar(  SnackBar(
                                          content:Text("Data updated Successfully") ,
                                        ));
                                        },
                                            text: "Edit",
                                            margin:
                                                EdgeInsets.only(right: 9.h))),
                                    Expanded(
                                        child: CustomElevatedButton(
                                            text: "Continue",
                                            margin: EdgeInsets.only(left: 9.h),
                                            buttonStyle: CustomButtonStyles
                                                .fillDeepOrangeA,
                                            onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));
                                            }))
                                  ]))
                        ]))))));
  }
  Future<void> updateprofile()async{
      if(  _formKey.currentState!.validate()){
         User? user=_auth.currentUser;
       _firestore.collection('users').where("email",isEqualTo: user!.email).get().then((value) async {
        final reef= value.docs.first.reference;
        print(reef);
      await  reef.set(
          {"fullname":roleoneController.text.toString(),
          "username":usernameoneController.text.toString(),
            "email":emailController.text.toString(),
            "phone":mobileNoController.text.toString(),
            "gender":genderController.text.toString()
          }
        );

       });

      }
  }
  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwoContainerScreen.
  // onTapArrowthreeone(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  // }
  //
  /// Navigates to the iphone14ProTwoContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProTwoContainerScreen.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.iphone14ProTwoContainerScreen);
  // }
}
