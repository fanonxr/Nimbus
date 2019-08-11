import 'package:flutter/material.dart';
import 'package:nimbus/data/category_data.dart';
import 'package:nimbus/models/category_model.dart';
import 'package:nimbus/components/cannabis_card.dart';

class CannabisCategory extends StatelessWidget {
  final List<Category> _categories = categories; // comes from category data
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CannabisCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
