import 'package:flutter/material.dart';
import 'package:news_app/Views/vert_list_builder.dart';
import 'package:news_app/widgets/horz_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HorzList(),
          ),
          vertListBuilder(),
        ],
      ),
    );
  }
}
