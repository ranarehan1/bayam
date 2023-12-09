import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 1, bottom: 14),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              decoration:  InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                label: Text('send_a_message'.tr),
              ),
            ),
          ),
          IconButton(
            onPressed: (){},
            icon:
            Icon(Icons.send, color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
