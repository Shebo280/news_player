class ArticleCard {
  String? image;
  String title;
  String? subTitle;
  ArticleCard(
      {required this.image, required this.title, required this.subTitle});
  factory ArticleCard.fromJson(json) {
    return ArticleCard(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
