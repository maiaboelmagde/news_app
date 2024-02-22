import 'package:flutter/material.dart';
import 'package:news_app/widgets/vert_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            const Text(
              'Cloud',
              style: TextStyle(
                color: Color(0xFFFABA0A),
                fontSize: 25,
              ),
            ),
            Text(
              ' ($category)',
              style: const TextStyle(
                color: Color(0xFF424240),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(slivers: [vertListBuilder(myCategory: category)]),
    );
  }
}
