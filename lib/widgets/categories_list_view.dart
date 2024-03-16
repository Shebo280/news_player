import 'package:flutter/material.dart';
import 'package:news_player/Data/category_data.dart';
import 'package:news_player/Cards/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryData().categoryImages.length,
        itemBuilder: (context, index) {
          return CategoryCard(
              categoryType: CategoryData().categoryTypes[index],
              categoryImage: CategoryData().categoryImages[index]);
        },
      ),
    );
  }
}
