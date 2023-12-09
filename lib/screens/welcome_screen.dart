import 'package:bayam/screens/authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:transparent_image/transparent_image.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void onGettingStartedButton() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return const SignUpScreen();
        },
      ),
    );
  }

  void onLanguageChangeButton() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.background,
            icon: const Icon(
              Icons.change_circle,
              size: 60,
            ),
            title: Text('change_language'.tr),
            actions: [
              TextButton(
                onPressed: () {
                  const local = Locale('en', 'US');
                  Get.updateLocale(local);
                },
                child: Text('english'.tr),
              ),
              TextButton(
                onPressed: () {
                  const local = Locale('fr', 'FR');
                  Get.updateLocale(local);
                },
                child: Text('french'.tr),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        actions: [
          TextButton(
            onPressed: onLanguageChangeButton,
            child: Text('language'.tr),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: const AssetImage(
                    'assets/getting_started.png',
                  ),
                ),
              ),
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperTwo(
                      reverse: true,
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.3),
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.6),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                    bottom: MediaQuery.of(context).size.height * 0.08,
                    child: Column(
                      children: [
                        Text(
                          'hello'.tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15,
                        ),
                        Text(
                          'aggrement'.tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('terms_of_service'.tr),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                elevation: 3,
                                alignment: Alignment.center,
                                backgroundColor:
                                    Theme.of(context).colorScheme.onBackground),
                            onPressed: onGettingStartedButton,
                            icon: const Icon(Icons.navigate_next, size: 35),
                            label: Text(
                              'agree_&_continue'.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.background,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Text(
                          'rights'.tr,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.grey[700],
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
