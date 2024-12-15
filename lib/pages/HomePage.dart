import 'package:ecommerceapp/components/AboutPage.dart';
import 'package:ecommerceapp/components/LoginPage.dart';
import 'package:ecommerceapp/components/nav_bar.dart';
import 'package:ecommerceapp/pages/CartPage.dart';
import 'package:ecommerceapp/pages/ShopPage.dart';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex=0;
  void navbar(int index){
    setState(() {
      _selectedIndex=index;
    });

  }

  final List<Widget> _pages=[
    Shoppage(),
    Cartpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      bottomNavigationBar: NavBar(
        onTabChange: (index)=>navbar(index),
      ),
      body: _pages[_selectedIndex],
     appBar: AppBar(
       backgroundColor: Colors.grey[200],
       elevation: 0.0,
       leading: Builder(
         builder: (context) {
           return IconButton(onPressed: (){
             Scaffold.of(context).openDrawer();
           },
               icon: Icon(Icons.menu));
         }
       ),

     ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            DrawerHeader(
              child: Image.asset('assets/intro.webp',width: double.infinity,),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.grey[800]),
            ),
            // Home ListTile
            ListTile(
              leading: Icon(Icons.home, color: Colors.white,size: 35,),
              title: Text('Home', style: TextStyle(color: Colors.white,fontSize: 20)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()), // Navigate to HomePage
                );
              },
            ),
            SizedBox(height: 30,),
            // About ListTile
            ListTile(
              leading: Icon(Icons.info, color: Colors.white,size: 35,),
              title: Text('About', style: TextStyle(color: Colors.white,fontSize: 20)),
              onTap: () {
                // You can navigate to an About Page here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aboutpage()), // Example navigation
                );
              },
            ),
            SizedBox(height: 30,),
            // Logout ListTile
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white,size: 35,),
              title: Text('Logout', style: TextStyle(color: Colors.white,fontSize: 20)),
              onTap: () {
                // Handle logout functionality here
                // Example: Clear the user session and navigate to the login screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Logoutpage()), // Navigate to LoginPage
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}
