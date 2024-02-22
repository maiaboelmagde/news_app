import 'package:flutter/material.dart';
import 'package:news_app/Views/category_view.dart';
import 'package:news_app/models/item_model.dart';

class HorzWidget extends StatelessWidget {
  const HorzWidget({super.key, required this.myList});

  final ItemModel myList;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(category: myList.itemTitle);
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 100,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image:
                  ExactAssetImage(myList.itemImage ?? 'assets/business.avif'),
              fit: BoxFit.fill,
            )),
        child: Text(
          myList.itemTitle,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
