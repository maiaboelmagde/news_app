import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.myItem});

  final ItemModel myItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(myItem.itemImage), fit: BoxFit.fill),
            ),
            child: const Text(''),
          ),
          Text(
            myItem.itemTitle,
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            myItem.itemSubTitle!,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
