import 'package:flutter/material.dart';
import 'package:nimbus/components/order_card.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 240.0,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: <Widget>[
//          ListTile(
//            leading: Text('Cart Total:', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
//            trailing: Text("86", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),)
//          ),
//          ListTile(
//              leading: Text('Discount:', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
//              trailing: Text("86", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),)
//          ),
//          ListTile(
//              leading: Text('Cart Total', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
//              trailing: Text("86", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),)
//          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Cart Total:', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            Text("86", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),),
          ],
        ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Discount:', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              Text("3.0", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Tax:', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              Text("0.5", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),),
            ],
          ),
          Divider(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Sub Total', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              Text("83.5", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),),
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(60.0),
            ),
            child: Center(
              child: Text("Procced to Checkout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),
            ),
          )
        ],
      ),
    );
  }
}
