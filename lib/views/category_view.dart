import 'package:flutter/material.dart';
import 'package:news_player/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  String category;
  CategoryView({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          category,
          style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigates back to the previous screen
          },
        ),
      ),
      body: CustomScrollView(
        slivers: [NewsListVIewBuilder(category)],
      ),
    );
  }
}
