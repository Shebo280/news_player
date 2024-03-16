import 'package:dio/dio.dart';
import 'package:news_player/Cards/article_card.dart';

class NewsServices {
  NewsServices();
  final dio = Dio();

  Future<List<ArticleCard>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=2a36db69818a459ebe94db78575bf43e&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleCard> articleData = [];
      for (var article in articles) {
        ArticleCard articleCard = ArticleCard.fromJson(article);
        articleData.add(articleCard);
      }
      return articleData;
    } catch (e) {
      return [];
    }
  }
}
