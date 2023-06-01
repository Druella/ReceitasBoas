import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class RecipesGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;
  const RecipesGridView({
    super.key,
    required this.recipes,
  });
  @override
  Widget build(BuildContext context) {
    //2
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      //3
      child: GridView.builder(
        //4
        itemCount: recipes.length,
        //5
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          //6
          final SimpleRecipe = recipes[index];
          return RecipeThumbnail(recipe: SimpleRecipe);
        },
      ),
    );
  }
}
