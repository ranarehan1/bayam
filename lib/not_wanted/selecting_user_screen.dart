// import 'package:bayam/screens/profile_creation_screen.dart';
// import 'package:flutter/material.dart';
//
// class SelectingUserScreen extends StatefulWidget {
//   const SelectingUserScreen({super.key});
//
//   @override
//   State<SelectingUserScreen> createState() => _SelectingUserScreenState();
// }
//
// class _SelectingUserScreenState extends State<SelectingUserScreen> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.background,
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.1,
//           ),
//           Text(
//             'Are you ?',
//             style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Theme.of(context).colorScheme.secondary),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               InkWell(
//                   onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
//                       return const ProfileCreationScreen(isIndividual: false,);
//                     },),);
//                   },
//                   borderRadius: BorderRadius.circular(15),
//                   child: const SelectingContainer(
//                       imageUrl: 'assets/company_select.png', text: 'Company')),
//               InkWell(
//                   onTap: () {
//                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
//                       return const ProfileCreationScreen(isIndividual: true,);
//                     },),);
//                   },
//                   borderRadius: BorderRadius.circular(15),
//                   child: const SelectingContainer(
//                       imageUrl: 'assets/individual_select.png',
//                       text: 'Individual')),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SelectingContainer extends StatelessWidget {
//   const SelectingContainer(
//       {super.key, required this.imageUrl, required this.text});
//
//   final String imageUrl;
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       height: MediaQuery.of(context).size.height * 0.28,
//       width: MediaQuery.of(context).size.width * 0.4,
//       decoration: BoxDecoration(
//         color: Colors.grey.withOpacity(0.4),
//         borderRadius: BorderRadius.circular(15),
//         image: DecorationImage(
//           image: AssetImage(imageUrl),
//         ),
//       ),
//       child: Text(
//         text,
//         style: Theme.of(context).textTheme.titleLarge!.copyWith(
//               color: Theme.of(context).colorScheme.primary,
//               fontWeight: FontWeight.bold,
//               // color: Colors.white,
//             ),
//       ),
//     );
//   }
// }
