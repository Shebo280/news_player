import 'package:flutter/material.dart';
import 'package:news_player/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final String categoryImage;
  final String categoryType;
  const CategoryCard({
    required this.categoryType,
    required this.categoryImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryView(category: categoryType),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 100,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(categoryImage), fit: BoxFit.fill),
          color: const Color.fromARGB(255, 181, 181, 179),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            categoryType,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
