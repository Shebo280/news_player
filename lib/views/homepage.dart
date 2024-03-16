import 'package:flutter/material.dart';
import 'package:news_player/widgets/categories_list_view.dart';
import 'package:news_player/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  color: Color.fromARGB(217, 237, 183, 8),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListVIewBuilder('science')
          ],
        ),
      ),
    );
  }
}
