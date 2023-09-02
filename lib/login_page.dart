import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Text Controllers

  final _pinCodeController = TextEditingController();

  //Sign In
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: '${_pinCodeController.text.trim()}@toonezchophouse.com', //Use textcontroller to sign in using required fields
        password: 'Duckbutter',);
  }
  @override
  void dispose() { //Dispose of controllers for mem management
    _pinCodeController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            //Prevents overflow from keyboard
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image(
                    image: AssetImage(
                      'images/logo.png',
                    ),
                    width: 300,
                  ),
                ),
                SizedBox(height: 40), //Blank Space

                //Blank Space
                Text(
                  "Please login to continue",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25,),
                  child: Container(
                    child: PinCodeTextField(
                      enableActiveFill: true,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        activeColor: const Color(0xFFE0A136),
                        inactiveColor: Colors.white,
                        selectedColor: const Color(0xFFE0A136),
                        activeFillColor:  Colors.grey[200],
                        inactiveFillColor:  Colors.grey[200],
                        selectedFillColor:  Colors.grey[200],
                        shape:PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12),

                      ),
                      appContext: context,
                      length: 4,
                      controller:_pinCodeController,
                    ),
                  ),
                ),
                SizedBox(height: 70), //Blank Space
                //Create signin button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFF205027), //Toonez Green
                      ),
                      child: Center(
                          child: Text('Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ))),
                    ),
                  ),
                ),
                SizedBox(height: 10), //Blank Space
              ],
            ),
          ),
        ),
      ),
    );
  }
}
