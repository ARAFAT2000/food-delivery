import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'profile_page.dart';
import 'store_page.dart';
import 'wish_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pageList =const [StorePage(),CartPage(),WishList(),ProfilePage()];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[index],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: index,
        onTap: (value){
          index=value;
          setState(() {
            
          });

        },
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),label: 'Cart'),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite),label: 'Wishlist'),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),label: 'profile'),
        ]),
    );
  }
}