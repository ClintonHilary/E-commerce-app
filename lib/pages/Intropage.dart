import 'package:ecommerceapp/pages/HomePage.dart';
import 'package:flutter/material.dart';
class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: Image.asset('assets/intro.webp',height: 230,width: double.infinity,),

              ),
              SizedBox(height: 40,),
              Text('Just Do it',style:
                TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                ),
              SizedBox(height: 24,),
              Text('Brand new sneekers and custum kick mode with premium quality',
                style: TextStyle(fontSize: 20,color:Colors.grey[900]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48,),
              GestureDetector(
                onTap: ()=>Navigator.push(context,MaterialPageRoute(builder:(context)=> Homepage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(child: Text('Shop Now',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),)),

                  ),

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
