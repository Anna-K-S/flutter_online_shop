import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentRageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentRageIndex = index;
        });
      },
      indicatorColor: Colors.grey[400],
      selectedIndex: currentRageIndex,
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.shopping_bag,
          ),
          label: 'Cart',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_2),
          label: 'Profile',
        ),
      ],
    );
  }
}


