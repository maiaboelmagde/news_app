import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';
import 'package:news_app/services/get_api_news.dart';
import 'package:news_app/widgets/vert_list.dart';

class vertListBuilder extends StatefulWidget {
  const vertListBuilder({
    super.key,
  });

  @override
  State<vertListBuilder> createState() => _vertListBuilderState();
}

class _vertListBuilderState extends State<vertListBuilder> {
  List<ItemModel> items = [];
  bool isLoading = true;

  Future<void> getItems() async {
    items = await GetApiNewsService(dio: Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()))
        : vertList(
            items: items,
          );
  }
}
