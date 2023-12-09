import 'package:bayam/widgets/categories_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    label: Text(
                      'search'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    CategoriesListTile(
                        title: 'agriculture',
                        description: 'agri_des'),
                    CategoriesListTile(
                        title: 'livestock',
                        description: 'live_des'),
                    CategoriesListTile(
                        title: 'fishing',
                        description: 'fish_des'),
                    CategoriesListTile(
                        title: 'phytosanitary',
                        description: 'phy_des'),
                    CategoriesListTile(
                        title: 'local_food',
                        description:
                            'local_food_des'),
                    CategoriesListTile(
                        title: 'rental',
                        description: 'rental_des'),
                    CategoriesListTile(
                        title: 'jobs',
                        description:
                            'job_des'),
                    CategoriesListTile(
                        title: 's',
                        description:
                            's_des'),
                    CategoriesListTile(
                        title: 'f',
                        description:
                            'f_des'),
                    CategoriesListTile(
                        title: 'p',
                        description:
                            'p_des'),
                    CategoriesListTile(
                        title: 'v',
                        description: 'v_des'),
                    CategoriesListTile(
                        title: 'c',
                        description:
                            'c_des'),
                    CategoriesListTile(title: 'other', description: ''),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
