import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';
import 'package:news_app/widgets/item_widget.dart';

class vertList extends StatelessWidget {
  const vertList({
    super.key,
    required this.items,
  });

  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: items.length,
        (context, indx) {
          return ItemWidget(myItem: items[indx]);
        },
      ),
    );
  }
}
