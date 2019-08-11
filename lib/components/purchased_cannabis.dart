import 'package:flutter/material.dart';

class PurchasedCannabis extends StatefulWidget {
  // instance vars to accept structure of food item
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  PurchasedCannabis({this.id, this.name, this.imagePath, this.category, this.price, this.discount, this.ratings});

  @override
  _PurchasedCannabisState createState() => _PurchasedCannabisState();
}

class _PurchasedCannabisState extends State<PurchasedCannabis> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(widget.imagePath, fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            right: 10.0,
            child: Container(
              height: 60.0,
              width: 340.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black12
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.cloud_queue, color: Colors.green, size: 16.0,),
                        Icon(Icons.cloud_queue, color: Colors.green, size: 16.0,),
                        Icon(Icons.cloud_queue, color: Colors.green, size: 16.0,),
                        Icon(Icons.cloud_queue, color: Colors.green, size: 16.0,),
                        Icon(Icons.cloud_queue, color: Colors.green, size: 16.0,),
                        SizedBox(width: 20.0,),
                        Text("(${widget.ratings.toString()} reviews)", style: TextStyle(color: Colors.grey, fontSize: 12.0),)
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("${widget.price.toString()}", style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 18.0),),
                    Text("Order type", style: TextStyle(color: Colors.grey),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
