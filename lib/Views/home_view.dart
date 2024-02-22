import 'package:flutter/material.dart';
import 'package:news_app/widgets/horz_list.dart';
import 'package:news_app/widgets/vert_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, this.category = 'general'});
  final String category;
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
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: HorzList(),
          ),
          vertListBuilder(myCategory: category),
        ],
      ),
    );
  }
}
