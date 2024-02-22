import 'package:dio/dio.dart';
import 'package:news_app/models/item_model.dart';

class GetApiNewsService {
  final Dio dio;
  String category;
  GetApiNewsService({required this.dio, required this.category});

  Future<List<ItemModel>> getNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?apiKey=07477c55c1634164a8b3cca955d76126&q=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ItemModel> articleList = [];

      for (var item in articles) {
        ItemModel newItem = ItemModel.fromJson(item);

        articleList.add(newItem);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
