import 'package:flutter/material.dart';
import 'package:news_player/Cards/article_card.dart';

class NewsCard extends StatelessWidget {
  final ArticleCard article;
  const NewsCard({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: (article.image == null)
                ? Image.asset(
                    'assets/noimage.jpg',
                    height: 200,
                    width: 380,
                  )
                : Image.network(
                    article.image!,
                    fit: BoxFit.cover,
                    height: 200,
                    width: 380,
                  ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 24, color: Colors.black),
          ),
          Text(
            article.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
