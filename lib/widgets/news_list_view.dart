import 'package:flutter/material.dart';
import 'package:newwss_app_11/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const NewsTile();
        },
      ),
    );
  }
}
