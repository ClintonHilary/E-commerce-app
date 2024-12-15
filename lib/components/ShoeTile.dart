import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';
class Shoetile extends StatefulWidget {
  Shoe shoe;
   Shoetile({super.key,required this.shoe});

  @override
  State<Shoetile> createState() => _ShoetileState();
}

class _ShoetileState extends State<Shoetile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.grey[100],

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  ClipRRect(
    borderRadius: BorderRadius.circular(12),
      child: Image(image: AssetImage(widget.shoe.imagepath))),

  //description
  Text(widget.shoe.description,style: TextStyle(color: Colors.grey.shade600),),
  //price
  Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(widget.shoe.name,style:
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              )
              ,),
            SizedBox(height: 8,),
            Text(
             '\$'+ widget.shoe.price,
              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,
                fontSize: 25
              ),)
          ],
        ),
        Container(
          child: Icon(Icons.add,color: Colors.white,),

          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(12),topLeft: Radius.circular(12))

          ),
        )
      ],
    ),
  ),
],
      ),
    );
  }
}
