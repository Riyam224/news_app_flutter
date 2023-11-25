import 'package:flutter/material.dart';
import 'package:newwss_app_11/widgets/categories_list_view.dart';
import 'package:newwss_app_11/widgets/news_list_view.dart';

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
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(child: SizedBox(height: 32)),
              SliverToBoxAdapter(child: NewsListView()),
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
