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
  var futureData;
  @override
  void initState() {
    super.initState();
    futureData = GetApiNewsService(dio: Dio()).getNews();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ItemModel>>(
      future: futureData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return vertList(items: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text('Oops! theres something went wrong ...'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
