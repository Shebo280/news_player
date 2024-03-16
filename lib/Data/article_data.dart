import 'package:news_player/Cards/article_card.dart';

class ArticleData {
  List<ArticleCard> articlesData = [];
  List<ArticleCard> articleData() {
    return articlesData;
  }

  void addAritcleCard(ArticleCard card) {
    articlesData.add(card);
  }
}
