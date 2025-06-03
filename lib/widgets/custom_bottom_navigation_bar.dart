import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentRageIndex = 0;

  @override
  void initState() {
    super.initState();
    currentRageIndex = _getIndexFromLocation(
      GoRouter.of(context).routerDelegate.currentConfiguration.fullPath,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      currentRageIndex = _getIndexFromLocation(
        GoRouter.of(context).routerDelegate.currentConfiguration.fullPath,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: _onItemTapped,
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

  void _onItemTapped(int index) {
    setState(() {
      currentRageIndex = index;
    });
    switch (index) {
      case 0:
        context.go('/products');
        break;
      case 1:
        context.go('/cart');
        break;
      case 2:
        context.go('/profile');
        break;
    }
  }

  int _getIndexFromLocation(String location) {
    switch (location) {
      case '/products':
        return 0;
      case '/cart':
        return 1;
      case '/profile':
        return 2;
      default:
        return 0;
    }
  }
}
