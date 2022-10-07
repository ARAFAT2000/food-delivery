import 'dart:html';

import 'package:flutter/material.dart';

import 'result_sheet.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<String> catagoryList = [
    'PIZZA',
    'BERGER',
    'COFFEE',
    'MILK',
    'BEEF',
    'SANDWICH',
    'THAI GREEN',
    'DRINKS'
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Choiche Your Food',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            Text('easy to buy',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(height: 16,
            width: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey,
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
borderSide: BorderSide(
  color: Colors.grey.shade200
)
                )
              ),
            ),
            SizedBox(height: 15,
            width: 16,),
            Container(
              height:50,
              margin:const  EdgeInsets.only(bottom: 5),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: catagoryList.length,
              separatorBuilder: (contex,index){
                return SizedBox(width: 10,);
              },
                itemBuilder: (context,index){
                return MaterialButton(
                  color: index == selectedIndex?Colors.blue :null,
                  shape: StadiumBorder(),
                  onPressed: (){
                    selectedIndex = index;
                    setState(() {
                    });
                  },child: Text(catagoryList[index]),);
              }),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (contex,index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: double.infinity,
                    height: 100,
                    //color: Colors.orange,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: Image.asset('assets/delevery.png')),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal:12),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Food Tittle',
                              style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.bold
                              ),),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Text('Burger',
                                style: TextStyle(
                                  fontSize:15,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('300 TK'),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder()
                                  ),
                                  onPressed: (){
                                    Navigator.pushReplacement(context,
                                     MaterialPageRoute(builder: (context)=>ResultSheet()));
                                  }, child: Text('Buy Now'))
                              ],
                             )
                            ],
                           ),
                          ),
                        )
                      ],
                    ),
                  );
                }, separatorBuilder: (context,index){
                  return const SizedBox(
                    height: 10,
                  );
                }, itemCount: 10)
              )
          ],
        ),
      ));
  }
}