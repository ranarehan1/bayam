import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../screens/messaging/user_message_screen.dart';

class MessageListTile extends StatefulWidget {
  const MessageListTile({super.key});

  @override
  State<MessageListTile> createState() => _MessageListTileState();
}

class _MessageListTileState extends State<MessageListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: const Text('User Name'),
          subtitle: const Text('Message from user'),
          trailing: Text(
              '${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}'),
          onTap: () {},
          leading: CircleAvatar(
            foregroundImage: MemoryImage(kTransparentImage),
            radius: 30,
            backgroundImage: const NetworkImage(
                'https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk='),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
        ),
      ],
    );
  }
}
