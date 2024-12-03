import 'package:flutter/material.dart';
import 'package:foody/utils/constants/colors.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
       backgroundColor: const Color(0xffffffff),
        elevation: 0,
        destinations: const [
       NavigationDestination(icon: Icon(Icons.home), label: "Home"),
      NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
      NavigationDestination(icon: Icon(Icons.shopping_cart), label: "Cart"),
      NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
    ]);
  }
}
