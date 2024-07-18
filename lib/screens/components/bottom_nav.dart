import "package:amptric/screens/pages/docs.dart";
import "package:amptric/screens/pages/map.dart";
import "package:amptric/screens/pages/more.dart";
import "package:amptric/screens/pages/onboarding.dart";
import "package:amptric/screens/pages/trip.dart";
import "package:amptric/style/constants.dart";
//import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  late Onboarding home;
  late AmpMap map;
  late MyTrips trips;
  late Docs docs;
  late More more;
  int currentTabIndex = 0;

  @override
  void initState() {
    home = const Onboarding();
    map = const AmpMap();
    trips = const MyTrips();
    docs = const Docs();
    more = const More();

    pages = [home, map, trips, docs, more];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: kToolbarHeight + 10,
          backgroundColor: Colors.white,
          color: priAmpColor,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            // start home
            CurvedNavigationBarItem(
              child: Image.asset(
                'assets/img/dashb.png',
                height: 40,
              ),
              label: 'Home',
            ),
            //end home

            // start charge
            CurvedNavigationBarItem(
              child: Image.asset(
                'assets/img/charging.png',
                height: 40,
              ),
              label: 'Charging',
            ),
            //end charge

            // start trips
            CurvedNavigationBarItem(
              child: Image.asset(
                'assets/img/trips.png',
                height: 30,
              ),
              label: 'My Trips',
            ),
            //end trips

            // start docs
            CurvedNavigationBarItem(
              child: Center(
                child: Image.asset(
                  'assets/img/docs.png',
                  height: 30,
                ),
              ),
              label: 'Docs',
            ),
            //end Docs

            // start more
            CurvedNavigationBarItem(
              child: Image.asset(
                'assets/img/more.png',
                height: 40,
              ),
              label: 'More',
            ),
            //end more
          ]),
      body: pages[currentTabIndex],
    );
  }
}
