import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_in_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel>pages = [
    PageViewModel(
    title: 'WIDE VARIETY OF FOOD',
    body: 'Explor our different variety of foods best of for you',
    footer: ElevatedButton(
      onPressed: (){}, 
      child:const Text("NEXT")),
      image: Center(
        child: Image.asset('assets/Untitled design (2).png'),
      ),
      decoration:const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        )
      )
  ),
  PageViewModel(
    title: 'FAST DELIVERY',
    body: 'Fast delivery with in few minutes of ordering',
    footer: ElevatedButton(
      onPressed: (){}, 
      child:const Text("NEXT")),
      image: Center(
        child: Image.asset('assets/delevery.png'),
      ),
      decoration:const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        )
      )
  ),
  PageViewModel(
    title: 'TASTY AND YUMMY',
    body: 'Freshly prepered with the best recipe to give a very sweet test',
    footer: ElevatedButton(
      onPressed: (){}, 
      child: const  Text("GET STARTED")),
      image: Center(
        child: Image.asset('assets/Untitled design.png'),
      ),
      decoration:const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        )
      )
  ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnBording'),
        centerTitle: true,
      ),
     body: Padding(
       padding: const EdgeInsets.symmetric(vertical: 24),
       child: IntroductionScreen(
        color: Colors.black,
        pages:pages,
        dotsDecorator: const DotsDecorator(
          size: Size(20,25),
          color: Colors.blue,
          activeSize: Size.square(15),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done:const Text('Done',style: TextStyle(fontSize: 20),),
        showSkipButton: true,
        skip:const Text('skip',style: TextStyle(fontSize: 20),),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward,size: 20,),
        onDone: ()=>onDone(context),
        curve: Curves.bounceInOut,
       ),
     ),
    );
  }
  void onDone(context) async{

    Navigator.pushReplacement(context,
     MaterialPageRoute(
      builder: (context)=> const SigninScreen()));
  }
}