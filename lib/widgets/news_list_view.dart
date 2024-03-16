import 'package:flutter/material.dart';
import 'package:news_player/Cards/article_card.dart';
import 'package:news_player/Cards/news_card.dart';

class NewsListVIew extends StatelessWidget {
  final List<ArticleCard> articles;

  const NewsListVIew({required this.articles, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: NewsCard(article: articles[index]),
          );
        },
      ),
    );
  }
}
