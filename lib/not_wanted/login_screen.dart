// import 'package:bayam/screens/authentication/signup_screen.dart';
// import 'package:bayam/screens/authentication/selecting_user_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:get/get.dart';
// import 'package:transparent_image/transparent_image.dart';
//
// import '../home_screen.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => LoginScreenState();
// }
//
// class LoginScreenState extends State<LoginScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   var visibility = false;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     void onLogin() {
//       // _formKey.currentState!.validate();
//       Get.to(() {
//         return const HomeScreen();
//       }, transition: Transition.leftToRightWithFade);
//     }
//     return Scaffold(
//         backgroundColor: Theme.of(context).colorScheme.background,
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.background,
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(builder: (ctx) {
//                     return const SelectingUserScreen();
//                   }),
//                 );
//               },
//               child: Text('skip'.tr),
//             )
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.03,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.23,
//                 width: double.infinity,
//                 child: FadeInImage(
//                   placeholder: MemoryImage(kTransparentImage),
//                   image: const AssetImage(
//                     'assets/login_image.png',
//                   ),
//                 ),
//               ),
//               Stack(
//                 children: [
//                   ClipPath(
//                     clipper: WaveClipperOne(
//                       reverse: true,
//                     ),
//                     child: Container(
//                       height: MediaQuery.of(context).size.height * 0.612,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             Theme.of(context)
//                                 .colorScheme
//                                 .onTertiaryContainer
//                                 .withOpacity(0.1),
//                             Theme.of(context)
//                                 .colorScheme
//                                 .onTertiaryContainer
//                                 .withOpacity(0.3),
//                           ],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: MediaQuery.of(context).size.height * 0.1,
//                     left: MediaQuery.of(context).size.height * 0.00001,
//                     right: MediaQuery.of(context).size.height * 0.00001,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 30),
//                       child: Form(
//                         key: _formKey,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               'login_to_your_account'.tr,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleLarge!
//                                   .copyWith(
//                                       fontSize: 30,
//                                       fontWeight: FontWeight.bold,
//                                       color: Theme.of(context)
//                                           .colorScheme
//                                           .secondary),
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.01,
//                             ),
//                             Text(
//                               textAlign: TextAlign.center,
//                               'otp'.tr,
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.07,
//                             ),
//                             TextFormField(
//                               keyboardType: TextInputType.phone,
//                               inputFormatters: [
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                               validator: (value) {
//                                 if (value == null ||
//                                     value.trim().length < 4 ||
//                                     value.trim().isEmpty ||
//                                     value.contains(RegExp(r'[a-z]')) ||
//                                     value.contains(RegExp(r'[A-Z]'))) {
//                                   return 'valid_phone_no'.tr;
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {},
//                               decoration: InputDecoration(
//                                 icon: const Icon(Icons.phone),
//                                 label: Text(
//                                   'phone_no'.tr,
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .bodyMedium!
//                                       .copyWith(
//                                         fontSize: 15,
//                                       ),
//                                 ),
//                               ),
//                             ),
//                             // TextFormField(
//                             //   keyboardType: TextInputType.text,
//                             //   textCapitalization: TextCapitalization.none,
//                             //   autocorrect: false,
//                             //   obscureText: visibility ? false : true,
//                             //   validator: (value) {
//                             //     if (value == null ||
//                             //         value.trim().length < 5 ||
//                             //         value.trim().isEmpty) {
//                             //       return 'Please enter a valid password.';
//                             //     }
//                             //     return null;
//                             //   },
//                             //   onSaved: (value) {},
//                             //   decoration: InputDecoration(
//                             //     suffixIcon: GestureDetector(
//                             //         onTap: () {
//                             //           setState(() {
//                             //             visibility = !visibility;
//                             //           });
//                             //         },
//                             //         child: Icon(visibility
//                             //             ? Icons.visibility
//                             //             : Icons.visibility_off)),
//                             //     icon: const Icon(Icons.password),
//                             //     label: Text(
//                             //       'Password',
//                             //       style: Theme.of(context)
//                             //           .textTheme
//                             //           .bodyMedium!
//                             //           .copyWith(
//                             //             fontSize: 15,
//                             //           ),
//                             //     ),
//                             //   ),
//                             // ),
//                             // SizedBox(
//                             //   height: MediaQuery.of(context).size.height * 0.02,
//                             // ),
//                             Column(
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text('donot_have_an_account'.tr),
//                                     TextButton(
//                                       onPressed: () {
//                                         Navigator.of(context).push(
//                                           MaterialPageRoute(
//                                             builder: (ctx) {
//                                               return const SignUpScreen();
//                                             },
//                                           ),
//                                         );
//                                       },
//                                       child: Text('sign_up'.tr),
//                                     ),
//                                   ],
//                                 ),
//                                 // TextButton(
//                                 //   onPressed: () {
//                                 //     Navigator.of(context).push(
//                                 //       MaterialPageRoute(
//                                 //         builder: (ctx) {
//                                 //           return const ForgotPassScreen();
//                                 //         },
//                                 //       ),
//                                 //     );
//                                 //   },
//                                 //   child: const Text('Forgot Password.'),
//                                 // ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.07,
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.07,
//                               width: MediaQuery.of(context).size.width * 0.5,
//                               child: ElevatedButton.icon(
//                                 style: ElevatedButton.styleFrom(
//                                     elevation: 3,
//                                     alignment: Alignment.center,
//                                     backgroundColor: Theme.of(context)
//                                         .colorScheme
//                                         .onBackground),
//                                 onPressed: onLogin,
//                                 icon: const Icon(Icons.login, size: 25),
//                                 label: Text(
//                                   'log_in'.tr,
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .titleLarge!
//                                       .copyWith(
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .background,
//                                       ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ));
//   }
// }
