import 'package:flutter/material.dart';
import './dummy_data.dart';
import './mealItem.dart';

class CategoryMeals extends StatelessWidget {
  final String id;
  final String title;

  const CategoryMeals(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final mealsInCategory = Dummy_Meals.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              mealsInCategory[index].title,
              mealsInCategory[index].imageUrl,
              mealsInCategory[index].duration,
            );
          },
          itemCount: mealsInCategory.length,
        ));
  }
}
