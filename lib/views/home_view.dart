import 'package:flutter/material.dart';
import 'package:newwss_app_11/widgets/categories_list_view.dart';
import 'package:newwss_app_11/widgets/news_list_view.dart';
import 'package:newwss_app_11/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              const Text(
                ' Clound',
                style: TextStyle(color: Color.fromARGB(255, 174, 137, 25)),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 18),
          child:  CustomScrollView(
            physics:  const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(child: CategoriesListView()),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverList(delegate: SliverChildBuilderDelegate((context, index) {
                return const NewsTile();
              })),
            ],
          ),
          // child:  Column(
          //   children: [
          //     CategoriesListView(),
          //     SizedBox(
          //       height: 32,
          //     ),
          //     Expanded(
          //       child: NewsListView(),
          //     ),
          //   ],
          // ),
        ));
  }
}
