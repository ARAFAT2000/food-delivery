import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_up_screen.dart';

import 'augth.dart/homepage.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Padding(
           padding:  const EdgeInsets.only(top: 180.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.40,
                    fontFamily: 'Poppins-Regular'),
              ),
             const  SizedBox(
                height: 20.0,
              ),
              const Text(
                'Please sign in to continue',
                style: TextStyle(fontSize: 18.0),
              ),
             const  SizedBox(
                height: 50.0,
              ),
              TextFormField(
                 decoration: 
                  const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12, width: 1),
                    ),
                    hintText: 'EMAIL',
                    prefixIcon: Icon(Icons.mail)),
              ),
             const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                obscureText: true,
                decoration:const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12, width: 1),
                    ),
                    hintText: 'PASSWORD',
                    prefixIcon: Icon(Icons.lock)),
              ),
             const SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>HomePage()
                      )
                      );

                  },
                  child: Container(
                    height: 50.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orange),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Text(
                          'SIGN IN',
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
             const Expanded(child: SizedBox()),
              Center(
                child: Wrap(
                  children: [
                   const Text('Don \'t have account?',
                        style: TextStyle(fontSize: 16.0)),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ));
                      },
                      child:const Text(
                        '  Sign up',
                        style: TextStyle(color: Colors.orange, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
              ),
            const SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}