import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/category_grid_item.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen(
      {super.key,
      required this.onToggleFavorite,
      required this.avaliableMeals});

  final void Function(Meal meal) onToggleFavorite;
  final List<Meal> avaliableMeals;

  void _selectCategory(BuildContext context, Category category) {
    final filteredMeals = avaliableMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: filteredMeals,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // avaliableCategories.map((category) => CategoryGridItem(category: category).toList())
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelected: () {
                _selectCategory(context, category);
              },
            ),
        ],
      ),
    );
  }
}
