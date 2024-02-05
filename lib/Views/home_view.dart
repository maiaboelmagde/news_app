import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';
import 'package:news_app/widgets/horzlist_widget.dart';
import 'package:news_app/widgets/item_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<ItemModel> items = const [
    ItemModel(
        itemImage: 'assets/technology.jpeg',
        itemTitle: ' hbdikbciuudh ',
        itemSubTitle:
            'viweyfgbeuifhkeu fiewufwef fewhfoiuwef uiehiuwef uehfoeh ifhweuiofhew jehfiuwefh '),
  ];

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Color(0xFFFABA0A),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myHorzList.length,
                  itemBuilder: (context, indx) {
                    return HorzListWidget(myList: myHorzList[indx]);
                  }),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: items.length,
                  itemBuilder: (context, indx) {
                    return ItemWidget(myItem: items[indx]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}