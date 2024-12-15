import 'package:flutter/material.dart';
class Logoutpage extends StatefulWidget {
  const Logoutpage({super.key});

  @override
  State<Logoutpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Logoutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
    );
  }
}
