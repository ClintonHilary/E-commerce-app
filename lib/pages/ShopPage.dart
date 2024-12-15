import 'package:ecommerceapp/components/ShoeTile.dart';
import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  TextEditingController _controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.text,
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(13),
                 ),
              hintText:  'Search for shoes',
               hintStyle: TextStyle(color: Colors.grey[900]),
               suffixIcon:  Icon(Icons.search, color: Colors.grey),

               ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 26),
          child: Text('Everyone flies... Some fly longer than others',

            style: TextStyle(fontSize: 17),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Text(
                'See all ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        // Wrapping ListView in Expanded to avoid overflow
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              Shoe shoe=Shoe(name: 'Air Force', description: 'shoe of all times', price: '400', imagepath: 'assets/shoe3.jpg');

             // Shoe shoe = Shoe(name: 'Air Jordan', description: 'cool shoe', price: '240', imagepath: 'assets/shoe3.jpg');
              return Shoetile(shoe: shoe);
            },
          ),
        ),
      ],
    );
  }
}

