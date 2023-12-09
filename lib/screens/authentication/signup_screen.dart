import 'package:bayam/screens/authentication/otp_screen.dart';
import 'package:bayam/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:transparent_image/transparent_image.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  PhoneNumber number = PhoneNumber(isoCode: 'FR');

  void onSignUp() {
    // final validator = _formKey.currentState!.validate();
    // if (validator) {
    //   Navigator.of(context).push(
    //     MaterialPageRoute(
    //       builder: (ctx) {
    //         return const OtpScreen();
    //       },
    //     ),
    //   );
    // }
    Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return const OtpScreen();
              },
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) {
                    return const HomeScreen();
                  }),
                );
              },
              child: Text('skip'.tr),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: double.infinity,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: const AssetImage(
                      'assets/signup_image.png',
                    ),
                  ),
                ),
                Stack(
                  children: [
                    ClipPath(
                      clipper: OvalTopBorderClipper(),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Theme.of(context)
                                  .colorScheme
                                  .tertiary
                                  .withOpacity(0.2),
                              Theme.of(context)
                                  .colorScheme
                                  .tertiary
                                  .withOpacity(0.5),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.12,
                      left: MediaQuery.of(context).size.height * 0.00001,
                      right: MediaQuery.of(context).size.height * 0.00001,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'register'.tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                  'otp'.tr,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyLarge),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                              ),
                              InternationalPhoneNumberInput(
                                  initialValue: number,
                                  hintText: 'phone_no'.tr,
                                  keyboardType: TextInputType.phone,
                                  selectorButtonOnErrorPadding: 3,
                                  spaceBetweenSelectorAndTextField: 3,
                                  ignoreBlank: true,
                                  selectorConfig: const SelectorConfig(
                                    selectorType: PhoneInputSelectorType.DIALOG,
                                  ),
                                  maxLength: 15,
                                  onSaved: (value) {},
                                  validator: (value) {
                                    if (value == null ||
                                        value.trim().isEmpty ||
                                        value.trim().length < 4 ||
                                        value.contains(RegExp(r'[a-z]')) ||
                                        value.contains(RegExp(r'[A-Z]'))) {
                                      return 'valid_phone_no'.tr;
                                    }
                                    return null;
                                  },
                                  onInputChanged: (PhoneNumber number) {
                                    if (number.phoneNumber == null ||
                                        number.phoneNumber!.isEmpty ||
                                        number.phoneNumber!.trim().isEmpty) {
                                      return;
                                    }
                                    return;
                                  }),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                              ),
                               Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                ),
                                child: Text(
                                    'use_any_spaces'.tr,
                                    textAlign: TextAlign.center),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 3,
                                      alignment: Alignment.center,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .onBackground),
                                  onPressed: onSignUp,
                                  child: Text(
                                    'send_code'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .background,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
