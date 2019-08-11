import 'package:flutter/material.dart';
import 'package:nimbus/components/home_top_info.dart';
import 'package:nimbus/components/cannabis_category.dart';
import 'package:nimbus/components/search_field.dart';
import 'package:nimbus/components/purchased_cannabis.dart';
import 'package:nimbus/data/cannabis_data.dart';
import 'package:nimbus/models/cannabis_model.dart';
import 'package:nimbus/constants.dart';

class HomeScreen extends StatefulWidget {
  // text styling in header
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Cannabis> _cannabisList = cannabisList; // list from cannabis data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          CannabisCategory(),
          SizedBox(height: 25.0,),
          SearchField(),
          SizedBox(height: 25.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  print("Next page");
                },
                child: Text(
                  "Frequently Purchased",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                ),
              ),
            ],
          ),
          SizedBox(height: 25.0,),
          Column(
            children: _cannabisList.map(_buildCannabisItem).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildCannabisItem(Cannabis cannabis) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: PurchasedCannabis(
        id: cannabis.id,
        name: cannabis.name,
        imagePath: cannabis.imagePath,
        category: cannabis.category,
        discount: cannabis.discount,
        price: cannabis.price,
        ratings: cannabis.ratings,
      ),
    );
  }

}
