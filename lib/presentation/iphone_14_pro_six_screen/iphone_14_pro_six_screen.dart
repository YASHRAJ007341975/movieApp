import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_five_screen/iphone_14_pro_five_screen.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';
import 'package:yashraj_s_application3/widgets/custom_text_form_field.dart';
import '../iphone_14_pro_thirteen_screen/iphone_14_pro_thirteen_screen.dart';





class Iphone14ProSixScreen extends StatelessWidget {
  
  Iphone14ProSixScreen({Key? key})
      : super(
          key: key,
        );
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();

  TextEditingController edittextController = TextEditingController();
  Future<void> _signinuser(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      try {
        final String email = edittextController.text.trim();
        final String pass = passwordController.text.trim();

        UserCredential userCredential =
        await  FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: pass,
        );

        if (userCredential.user != null) {
          QuerySnapshot snapshot = await FirebaseFirestore.instance
              .collection('users')
              .where('email', isEqualTo: email)
              .get();

          if (snapshot.docs.isNotEmpty) {
            passwordController.clear();
            edittextController.clear();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Iphone14ProThirteenScreen(),));

          }
        }
      } catch (e) {
        String errorMessage ="Invalid user credential";
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
          ),
        );
      }
    }
  }
  //marama thi code lai lava
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 60.v,
            right: 24.h,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Movi",
                          style: theme.textTheme.displayMedium,
                        ),
                        TextSpan(
                          text: "e",
                          style: CustomTextStyles.displayMediumRedA70002,
                        ),
                        TextSpan(
                          text: "+",
                          style: CustomTextStyles.displayMediumInikaRedA70002,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 70.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Log",
                        style: CustomTextStyles.displaySmallWhiteA70001,
                      ),
                      TextSpan(
                        text: "in",
                        style: theme.textTheme.displaySmall,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 35.h,
                    top: 34.v,
                  ),
                  child: Text(
                    "Email",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  height: 291.v,
                  width: 337.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 267.v,
                          width: 336.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 267.v,
                                  width: 336.h,
                                  decoration: BoxDecoration(
                                    //color: appTheme.redA70005.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(
                                      168.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 23.h,
                                    top: 40.v,
                                    right: 15.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Password",
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                      SizedBox(height: 9.v),
                                      CustomTextFormField(
                                        validator: (value) {
                                          if(value!.isEmpty){
                                            return "email is required";
                                          }
                                        },
                                        controller: passwordController,
                                        obscureText: true,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 9.v,
                                            right: 9.h,
                                          ),
                                          child: GestureDetector(
                                            child: Text(
                                              "Forget Password?",
                                              style: CustomTextStyles.titleMedium16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        height: 49.v,
                        width: 330.h,
                        text: "Login",

                        margin: EdgeInsets.only(bottom: 28.v),
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle: CustomTextStyles.titleLargeBlack90007,

                        alignment: Alignment.bottomCenter,
                        onTap: (){
                          _signinuser(context);
                        },
                      ),
                      CustomTextFormField(
                        validator: (value) {
                          if(value!.isEmpty){
                            return "email is required";
                          }
                        },
                        width: 308.h,
                        controller: edittextController,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                CustomElevatedButton(
                  height: 25.v,
                  width: 76.h,
                  text: "Sing up",
                  buttonStyle: CustomButtonStyles.underLineGray,
                  buttonTextStyle: theme.textTheme.titleLarge!,
                  alignment: Alignment.center,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute( builder: (context) => Iphone14ProFiveScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
