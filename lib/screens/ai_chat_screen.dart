import 'package:bayam/widgets/new_message.dart';
import 'package:flutter/material.dart';

class AiChatScreen extends StatelessWidget {
  const AiChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: const Column(
          children: [
            Expanded(
              child: Text('New App'),
            ),
            NewMessage(),
          ],
        ),);
  }
}
