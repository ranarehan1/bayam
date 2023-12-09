import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeListTile extends StatelessWidget {
  const  HomeListTile({super.key, required this.title, required this.onHaveALook});

  final String title;
  final void Function() onHaveALook;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(
        title.tr,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary),
      ),
      trailing: InkWell(
        onTap: onHaveALook,
        child: Text('have_a_look'.tr),
      ),
    );
  }
}
