import 'package:flutter/material.dart';
import 'package:newwss_app_11/models/category_model.dart';
import 'package:newwss_app_11/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // todo height == categorycard height
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
