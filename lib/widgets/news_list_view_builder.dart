import 'package:flutter/material.dart';
import 'package:news_player/Cards/article_card.dart';
import 'package:news_player/Services/error_message.dart';
import 'package:news_player/Services/news_services.dart';
import 'package:news_player/widgets/indicator.dart';
import 'package:news_player/widgets/news_list_view.dart';

class NewsListVIewBuilder extends StatefulWidget {
  String category;
  NewsListVIewBuilder(this.category, {super.key});

  @override
  State<NewsListVIewBuilder> createState() => _NewsListVIewBuilderState();
}

class _NewsListVIewBuilderState extends State<NewsListVIewBuilder> {
  var futureData;
  @override
  void initState() {
    super.initState();
    futureData = NewsServices().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleCard>>(
      future: futureData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListVIew(
            articles: snapshot.data!,
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Indicator();
        } else {
          return const ErrorMessage();
        }
      },
    );
  }
}
