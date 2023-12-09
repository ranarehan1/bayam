import 'package:bayam/widgets/setting_option_list_tile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height ,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Theme.of(context).colorScheme.background,
                      backgroundImage:
                          const AssetImage('assets/default_signup_image.png'),
                    ),
                   Expanded(
                     child: ListTile(
                       title: Text('User Name', style: Theme.of(context).textTheme.titleLarge!.copyWith(
                         color: Theme.of(context).colorScheme.secondary,
                       ),),
                     ),
                   ),
                  ],
                ),
              ),
                Expanded(
                  child:  Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Text(
                          'My Bayam',
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        SettingOptionListTile(),
                        SettingOptionListTile(),
                        SettingOptionListTile(),
                        SettingOptionListTile(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          'Settings',
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        SettingOptionListTile(),
                        SettingOptionListTile(),
                        SettingOptionListTile(),
                        SettingOptionListTile(),

                      ],
                    ),
                  ),
                )

            ],
          ),
        ),
      ),
    );
  }
}
