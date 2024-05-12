import 'package:coffe_shop/components/my_bottom_nav_bar.dart';
import 'package:coffe_shop/pages/cart_page.dart';
import 'package:coffe_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void navigateBottomBar(index) {
    setState(() {
      _selectedindex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavigationBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}
