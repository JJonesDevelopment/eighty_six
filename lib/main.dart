import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home.dart';
//Initialize Firebase
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // Root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Declare theme
      //TODO:GET FINAL APPROVAL OF THEME COLORS
      theme: ThemeData(
        textTheme:
          Theme.of(context).textTheme.apply(

        //bodyColor: Colors.white, //All Text initially white
      ),
      ),
     debugShowCheckedModeBanner: false,
      home:Home(),);

  }
}




