import 'package:flutter/material.dart';


class SettingOptionListTile extends StatelessWidget {
  const SettingOptionListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Some Options',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.6),),
      ),
      trailing:  Icon(Icons.arrow_forward_ios, color: Theme.of(context).colorScheme.primary.withOpacity(0.6),)
    );
  }
}
