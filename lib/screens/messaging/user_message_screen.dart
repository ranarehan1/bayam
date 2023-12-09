import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class UserMessageScreen extends StatelessWidget {
  const UserMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/default_signup_image.png'),
              foregroundImage: MemoryImage(kTransparentImage),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text('User Name'),
          ],
        ),
      ),
    );
  }
}
