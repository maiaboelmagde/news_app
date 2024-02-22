import 'package:flutter/foundation.dart';

class ItemModel {
  final String? itemImage;
  final String itemTitle;
  final String? itemSubTitle;

  const ItemModel(
      {required this.itemImage, required this.itemTitle, this.itemSubTitle});

  factory ItemModel.fromJson(json) {
    return ItemModel(
        itemImage: json['urlToImage'],
        itemTitle: json['title'],
        itemSubTitle: json['description']);
  }
}
