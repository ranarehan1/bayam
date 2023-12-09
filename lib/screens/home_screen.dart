import 'package:bayam/screens/ad_detail_screen.dart';
import 'package:bayam/widgets/home_list_tile.dart';
import 'package:bayam/widgets/home_popular_companies_container.dart';
import 'package:bayam/widgets/simple_ad_container.dart';
import 'package:flutter/material.dart';

import '../widgets/premium_ad_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              HomeListTile(title: 'popular_companies', onHaveALook: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.18,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                              return const AdDetailScreen();
                            },),);
                          },
                          child: const HomePopularCompaniesContainer());
                    }),
              ),
              HomeListTile(title: 'premium_ads', onHaveALook: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                              return const AdDetailScreen();
                            },),);
                          },
                          child: const PremiumAdContainer(),);
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(

                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                                return const AdDetailScreen();
                              },),);
                            },

                          child: const PremiumAdContainer(),);
                    }),
              ),
              HomeListTile(title: 'ads', onHaveALook: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                              return const AdDetailScreen();
                            },),);
                          },
                          child: const SimpleAdContainer(),);
                    }),
              ),
            ],
          ),
        ));
  }
}
