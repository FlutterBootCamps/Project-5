import 'package:flowerd/core/utils/constant_colors.dart';
import 'package:flowerd/views/Account_Screen/account.dart';
import 'package:flowerd/views/Cart_Screen/cart.dart';
import 'package:flowerd/views/Catalogue_Screen/catalogue.dart';
import 'package:flowerd/views/Home_Screen/home.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Home(),
    Catalogue(),
    Cart(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: home1,
        unselectedItemColor: grey,
        showUnselectedLabels: true,
        
        currentIndex: _currentIndex,
        
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        
        items:const   [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_outlined),
            label: 'CATALOGUE', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "CART",           
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }
}