import 'package:dio/dio.dart';
import 'package:news_app/models/item_model.dart';

class GetApiNewsService {
  final Dio dio;
  GetApiNewsService({required this.dio});

  Future<List<ItemModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?apiKey=07477c55c1634164a8b3cca955d76126&q=general');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ItemModel> articleList = [];

      for (var item in articles) {
        ItemModel newItem = ItemModel(
          itemImage: item['urlToImage'],
          itemTitle: item['title'],
          itemSubTitle: item['description'],
        );

        articleList.add(newItem);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
