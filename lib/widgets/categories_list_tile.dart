import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesListTile extends StatelessWidget {
  const CategoriesListTile(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title.tr,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
            ),
      ),
      subtitle: Text(description.tr),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
      ),
    );
  }
}
