import 'dart:html';

import 'package:flutter/material.dart';

import '../introduction_screen.dart';
import '../sign_in_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body:Container(
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                child:Icon(Icons.person),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(12),
                //color: Colors.blue,
                child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10,),
                  Text('User person')

                ],
              ),),
               SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(12),
               // color: Colors.blue,
                child: Row(
                children: [
                  Icon(Icons.call),
                  SizedBox(width: 10,),
                  Text('User number')

                ],
              ),),
               SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(12),
               // color: Colors.blue,
                child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10,),
                  Text('User email')

                ],
              ),
              
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Flexible(
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                      }, child: Text('Log Out'))),
                  )
                ],
                
              ),
               SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Flexible(
                      child: ElevatedButton(onPressed: (){

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IntroScreen()));
                      },
                       child: Text('Close the Apps'))),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}