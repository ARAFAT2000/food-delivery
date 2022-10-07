import 'package:flutter/material.dart';

import 'result_sheet.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Colors.deepPurple,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('You have carts 3 items',style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            Expanded(
              child: ListView.separated(itemBuilder: (context,index){
                return Container(
                  height: 100,
                  width: double.infinity,
                 // color: Colors.teal,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('assets/Untitled design (2).png')),
                      
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Food',style:TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold
                              ),),
                              Text('Drinks'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('100 Tk'),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: StadiumBorder()
                                    ),
                                    onPressed: (){
                                      Navigator.pushReplacement(context,
                                     MaterialPageRoute(builder: (context)=>ResultSheet()));
                                    },
                                   child: Text('Buy Now'))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }, separatorBuilder: (contex,index){
                return SizedBox(height: 10,
                width: 10,);
              }, itemCount: 10),
            )
          ],
        ),
      )),
    );
  }
}