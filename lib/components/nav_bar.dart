import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class NavBar extends StatefulWidget {
  void Function(int)?onTabChange;
   NavBar({super.key,required this.onTabChange});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.symmetric(vertical: 20),

      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade800,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade300,
        mainAxisAlignment: MainAxisAlignment.center,
        iconSize: 35,
        tabBorderRadius: 43,
        onTabChange: (value)=>(value),
        tabs: [
          GButton(icon: Icons.home,text: 'Shop',textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          GButton(icon: Icons.shopping_bag_rounded,text: 'Cart',textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
