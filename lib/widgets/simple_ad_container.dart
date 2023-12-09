import 'package:flutter/material.dart';

class SimpleAdContainer extends StatelessWidget {
  const SimpleAdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.24,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),

      child:  Column(
        children: [
          const SizedBox(
            height: 2,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.17,
            margin: const EdgeInsets.symmetric(
              horizontal: 4,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk='),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text('Testing'),

        ],
      ),
    );
  }
}
