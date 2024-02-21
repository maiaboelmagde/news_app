import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';
import 'package:news_app/services/get_api_news.dart';
import 'package:news_app/widgets/item_widget.dart';

class vertList extends StatefulWidget {
  const vertList({
    super.key,
  });

  @override
  State<vertList> createState() => _vertListState();
}

class _vertListState extends State<vertList> {
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
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: items.length,
              (context, indx) {
                return ItemWidget(myItem: items[indx]);
              },
            ),
          );
  }
}
