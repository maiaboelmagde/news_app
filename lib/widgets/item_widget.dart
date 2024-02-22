import 'package:flutter/material.dart';
import 'package:news_app/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.myItem});

  final ItemModel myItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              myItem.itemImage ??
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/2048px-No_image_available.svg.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              myItem.itemTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Text(
            myItem.itemSubTitle ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
