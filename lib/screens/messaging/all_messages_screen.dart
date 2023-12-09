import 'package:flutter/material.dart';
import '../../widgets/message_list_tile.dart';

class AllMessagesScreen extends StatelessWidget {
  const AllMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return const MessageListTile();
            }));
  }
}
