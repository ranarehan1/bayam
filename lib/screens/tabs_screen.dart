import 'package:bayam/screens/ai_chat_screen.dart';
import 'package:bayam/screens/home_screen.dart';
import 'package:bayam/screens/messaging/all_messages_screen.dart';
import 'package:bayam/screens/profile_screen.dart';
import 'package:bayam/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int pageIndex = 0;
  void selectPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();
    if (pageIndex == 1) {
      activePage = const AllMessagesScreen(
      );
    }
    if (pageIndex == 2) {
      activePage = const SearchScreen();
    }
    if (pageIndex == 3) {
      activePage = const AiChatScreen();
    }
    if (pageIndex == 4) {
      activePage = const ProfileScreen();
    }

    PreferredSizeWidget appBarHomePage = AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      automaticallyImplyLeading: false,
      toolbarHeight: MediaQuery.of(context).size.height * 0.14,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.primary.withOpacity(0.2),
            Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
      ),
      centerTitle: true,
      title: SizedBox(
        height: MediaQuery.of(context).size.height * 0.14,
        child: Column(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: Image.asset(
                'assets/logo/main_logo.png',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.003,
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
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
          ],
        ),
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: pageIndex == 0
          ? appBarHomePage
          : AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).colorScheme.background,
              title: Text(
                pageIndex == 1
                    ? 'messages'.tr
                    : pageIndex == 2
                        ? 'categories'.tr
                        : pageIndex == 3
                            ? 'ai_assistant'.tr
                            : pageIndex == 4
                                ? 'profile2'.tr
                                : '',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (index) {
            selectPage(index);
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.background,
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.background,
                icon: Icon(
                  Icons.mail,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.background,
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.background,
                icon: Icon(
                  Icons.smart_toy,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.background,
                icon: Icon(
                  Icons.account_circle,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                label: ''),
          ]),
      body: activePage,
    );
  }
}
