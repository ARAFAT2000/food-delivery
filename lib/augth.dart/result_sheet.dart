import 'package:flutter/material.dart';

import 'homepage.dart';

class ResultSheet extends StatefulWidget {
  const ResultSheet({super.key});

  @override
  State<ResultSheet> createState() => _ResultSheetState();
}

class _ResultSheetState extends State<ResultSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text('Delivery Offers finished',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
            
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
           child: Text('Back',style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple
           ),))
        ],
      ),
 
    );
  }
}