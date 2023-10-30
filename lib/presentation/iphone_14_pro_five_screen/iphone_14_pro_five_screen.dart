import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_six_screen/iphone_14_pro_six_screen.dart';
import 'package:yashraj_s_application3/widgets/custom_elevated_button.dart';
import 'package:yashraj_s_application3/widgets/custom_text_form_field.dart';

import '../../firebase_options.dart';
import '../iphone_14_pro_thirteen_screen/iphone_14_pro_thirteen_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(Iphone14ProFiveScreen());
}
// ignore_for_file: must_be_immutable
class Iphone14ProFiveScreen extends StatelessWidget {

  Iphone14ProFiveScreen({Key? key}) : super(key: key);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController EmailController = TextEditingController();
 TextEditingController PassController = TextEditingController();
  TextEditingController MobileController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _registerUserWithEmailAndPassword(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      try {
        final String email = EmailController.text.trim();
        final String pass = PassController.text.trim();
        final String phone = MobileController.text.trim();

        UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(
          email: email,
          password: pass,
        );


        // Save user details to Firestore
        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'email': email,
          'password' : pass ,
          'mobileNumber': phone ,
        });
        // User successfully registered
        print('User registered: $email');

        // Clear the input fields
        EmailController.clear();
        PassController.clear();
        MobileController.clear();

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User registered successfully.'),
          ),
        );
      } catch (e) {
        // Show custom error message
        String errorMessage = e.toString();

        // Show error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
          ),
        );
      }
    }
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 45.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Movi",
                    ),
                    TextSpan(
                      text: "e+",
                    ),
                  ]),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 27.v),
              Align(
                alignment: Alignment.center,
                child: Text("Sing Up"),
              ),
              Form( key:_formKey,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 41.h, top: 15.v),
                    child: Text("Email"),
                  ),
                  CustomTextFormField(
                    controller: EmailController,
                    margin: EdgeInsets.only(left: 18.h, top: 5.v, right: 41.h),
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                      if (!isValidEmail(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 41.h, top: 15.v),
                    child: Text("Password"),
                  ),
                  CustomTextFormField(
                    controller: PassController,
                    margin: EdgeInsets.only(left: 18.h, top: 5.v, right: 41.h),
                    textInputAction: TextInputAction.done,
                    obscureText: true, // This hides the password input
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 41.h, top: 15.v),
                    child: Text("Phone No."),
                  ),
                  CustomTextFormField(

                    controller: MobileController,
                    margin: EdgeInsets.only(left: 18.h, top: 5.v, right: 41.h),
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone number is required';
                      }
                      if (!isValidPhoneNumber(value)) {
                        return 'Enter a valid phone number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.v),
                  ElevatedButton(
                    onPressed: () {
                      _registerUserWithEmailAndPassword(context); // Call your onTap function here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff0077FF), // Button background color
                      onPrimary: Colors.white, // Text color
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 49.v, horizontal: 150.h), // Set size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Border radius
                      ),
                    ),
                    child: Text("Sign up"),
                  ),
                ],),
              ),
              SizedBox(height: 34.v),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Iphone14ProSixScreen(),));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Transparent background color
                  onPrimary: Color(0xffa0a0a0), // Text color
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 25.v, horizontal: 55.h), // Set size
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.white, // Border color
                      width: 1, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10.0), // Border radius
                  ),
                ),
                child: Text("Login"),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  // ... (Remaining code with onTapSingup and onTapLogin functions)

  bool isValidPhoneNumber(String phoneNumber) {
    final RegExp phoneRegex = RegExp(r'^[0-9]{10,}$');
    return phoneRegex.hasMatch(phoneNumber);
  }

  bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
    );
    return emailRegex.hasMatch(email);
  }
}