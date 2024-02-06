import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';

class HorzListWidget extends StatelessWidget {
  const HorzListWidget({super.key, required this.myList});

  final ItemModel myList;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      height: 100,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: ExactAssetImage(myList.itemImage),
            fit: BoxFit.fill,
          )),
      child: Text(
        myList.itemTitle,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
