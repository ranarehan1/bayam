// import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:transparent_image/transparent_image.dart';
//
// class ForgotPassScreen extends StatefulWidget {
//   const ForgotPassScreen({super.key});
//
//   @override
//   State<ForgotPassScreen> createState() => _ForgotPassScreenState();
// }
//
// class _ForgotPassScreenState extends State<ForgotPassScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   void onForgot() {
//     _formKey.currentState!.validate();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.background,
//       ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             ClipPath(
//               clipper: RoundedDiagonalPathClipper(),
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.872,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Theme.of(context).colorScheme.primary.withOpacity(0.2),
//                       Theme.of(context).colorScheme.primary.withOpacity(0.5),
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//               ),
//             ),
//             Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.01,
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.23,
//                     width: double.infinity,
//                     child:  FadeInImage(
//                       placeholder: MemoryImage(kTransparentImage),
//                       image: const AssetImage(
//                         'assets/forgotpass_image.png',
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 30,
//                     ),
//                     height: MediaQuery.of(context).size.height * 0.2,
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Enter the registered phone number.',
//                       textAlign: TextAlign.center,
//                       style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                           color: Theme.of(context).colorScheme.secondary
//                           ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 30,
//                     ),
//                     child: TextFormField(
//                       keyboardType: TextInputType.phone,
//                       validator: (value) {
//                         if (value == null ||
//                             value.trim().length < 5 ||
//                             value.trim().isEmpty ||
//                             value.contains(RegExp(r'[a-z]')) ||
//                             value.contains(RegExp(r'[A-Z]'))) {
//                           return 'Please enter a valid phone number.';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) {},
//                       decoration: InputDecoration(
//                         icon: const Icon(Icons.phone),
//                         label: Text(
//                           'Phone number',
//                           style:
//                               Theme.of(context).textTheme.bodyMedium!.copyWith(
//                                     fontSize: 15,
//                                   ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20,
//                     ),
//                     alignment: Alignment.center,
//                     height: MediaQuery.of(context).size.height * 0.1,
//                     child: const Text(
//                       'A verification code will be sent to you on your registered phone number',
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.07,
//                     width: MediaQuery.of(context).size.width * 0.5,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           elevation: 3,
//                           alignment: Alignment.center,
//                           backgroundColor:
//                               Theme.of(context).colorScheme.onBackground),
//                       onPressed: onForgot,
//                       child: Text(
//                         'Send Code',
//                         style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                               color: Theme.of(context).colorScheme.background,
//                             ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
