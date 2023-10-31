import 'package:flutter/material.dart';
import 'package:medicargo/pages/home_page.dart';
import 'package:medicargo/pages/profile_page.dart';
import 'package:medicargo/pages/track_page.dart';
import 'package:medicargo/provider/page_provider.dart';
import 'package:provider/provider.dart';

import '../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    Widget buildContent() {
      int newPage = pageProvider.page;
      switch (newPage) {
        case 0:
          {
            return const HomePage();
          }
        case 1:
          {
            return const TrackPage();
          }
        case 2:
          {
            return const ProfilePage();
          }

        default:
          {
            return const HomePage();
          }
      }
    }

    Widget customBottomNavigationUser() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(25, 0, 0, 0),
                  blurRadius: 4,
                  offset: Offset(0, -4))
            ]),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationItem(
              icon: Icons.home_outlined,
              index: 0,
            ),
            NavigationItem(
              icon: Icons.location_on_outlined,
              index: 1,
            ),
            NavigationItem(
              icon: Icons.person_outlined,
              index: 2,
            ),
          ],
        ),
      );
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            buildContent(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [customBottomNavigationUser()],
            ),
          ],
        ));
  }
}

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    required this.icon,
    required this.index,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    return GestureDetector(
      onTap: () {
        pageProvider.setPage = index;
        if (index == 0) {
          pageProvider.setHomePage = 0;
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
              size: 40,
              color: pageProvider.page == index ? primaryPurple : neutral500),
        ],
      ),
    );
  }
}
