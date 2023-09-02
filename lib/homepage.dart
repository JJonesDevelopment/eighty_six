import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //#240E0F
      backgroundColor:const Color(0xFF240E0F),
      body: SafeArea(
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap:(){
                            //TODO: Add functionality
                           },
                          child: Container(

                            padding: EdgeInsets.symmetric(horizontal: 9,vertical: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color:const Color(0xFF205027),

                            ),
                            child:Text('Shopping List',
                            style: TextStyle(
                              color:const Color(0xFFE0A136),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                          ),
                        ),
                        SizedBox(width: 35),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 53,vertical: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xFF205027),

                          ),
                          child:Text('POS',
                            style: TextStyle(
                              color:const Color(0xFFE0A136),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        ),
                      ],
                    ),
                    SizedBox(height:30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:EdgeInsets.symmetric(horizontal: 36,vertical: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xFF205027),

                          ),
                          child:Text('Recipes',
                            style: TextStyle(
                              color:const Color(0xFFE0A136),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(width: 35),
                        Container(
                          padding:EdgeInsets.symmetric(horizontal: 49,vertical: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xFF205027),

                          ),
                          child:Text('Task',
                            style: TextStyle(
                              color:const Color(0xFFE0A136),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        ),
                      ],
                    ),
                    SizedBox(height:30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:EdgeInsets.symmetric(horizontal: 15,vertical: 30),                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xFF205027),

                          ),
                          child:Text('Admin Tools',
                            style: TextStyle(
                              color:const Color(0xFFE0A136),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        ),
                        SizedBox(width: 35),
                        Container(
                          padding:EdgeInsets.symmetric(horizontal: 13,vertical: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xFF205027),

                          ),
                          child:Text('Toonez Time',
                            style: TextStyle(
                              color:const Color(0xFFE0A136),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        ),
                      ],
                    ),
                    SizedBox(height:20),

                  ],

                ),
                Column(

                  children: [

                    Text('Signed in as: ' + user.email!,
                    style:TextStyle(color:Colors.white,)),
                    MaterialButton(onPressed: () {
                      FirebaseAuth.instance.signOut();
                    },
                      color: const Color(0xFF205027),
                      child:Text('Sign Out', style:TextStyle(
                        color:Colors.white,
                      )),

                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
