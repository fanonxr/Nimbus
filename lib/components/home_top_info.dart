import 'package:flutter/material.dart';
import 'package:nimbus/constants.dart';

class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  "Many Strains",
                  style: kTextStyle
              ),
              Text(
                "Smoke Weed",
                style: kTextStyle,
              ),
            ],
          ),
          Icon(
            Icons.notifications_none,
            size: 40.0,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
