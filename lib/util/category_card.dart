import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;
  const CategoryCard(
      {Key? key, required this.iconImagePath, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.pink[200],
        ),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 34,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
