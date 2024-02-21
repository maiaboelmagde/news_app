import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';
import 'package:news_app/widgets/horz_widget.dart';

class HorzList extends StatelessWidget {
  const HorzList({
    super.key,
  });

  final List<ItemModel> myHorzList = const [
    ItemModel(itemImage: 'assets/business.avif', itemTitle: 'business'),
    ItemModel(itemImage: 'assets/entertaiment.avif', itemTitle: 'entertaiment'),
    ItemModel(itemImage: 'assets/general.avif', itemTitle: 'general'),
    ItemModel(itemImage: 'assets/health.avif', itemTitle: 'health'),
    ItemModel(itemImage: 'assets/science.avif', itemTitle: 'science'),
    ItemModel(itemImage: 'assets/sports.avif', itemTitle: 'sports'),
    ItemModel(itemImage: 'assets/technology.jpeg', itemTitle: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: myHorzList.length,
          itemBuilder: (context, indx) {
            return HorzWidget(myList: myHorzList[indx]);
          }),
    );
  }
}
