import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/account.dart';
import '../pages/cart.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int myIndex = 0;

  // List of pages to display for each BottomNavigationBar item
  final List<Widget> pages = [
     MyHomePage(),
     MyCartPage(),
     MyAccountPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myIndex],
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), // Rounded upper-left corner
            topRight: Radius.circular(30), // Rounded upper-right corner
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 123, 143, 178),
            selectedItemColor: Colors.white, // Color for selected item
            unselectedItemColor: const Color.fromARGB(145, 255, 255, 255), // Color for unselected items
            type: BottomNavigationBarType.fixed,
            currentIndex: myIndex,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 28),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined, size: 28),
                label: 'Projects',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_3_outlined, size: 28), // Icon for News
                label: 'News',
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

