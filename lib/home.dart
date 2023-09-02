import 'package:eighty_six/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Check for non null user
      body:StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder:(context,snapshot){
        if(snapshot.hasData){
    return HomePage();
    }else {
          return LoginPage();
        }
      }),
    );
  }
}

