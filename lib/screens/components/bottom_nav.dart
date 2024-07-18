import "package:amptric/screens/pages/docs.dart";
import "package:amptric/screens/pages/map.dart";
import "package:amptric/screens/pages/more.dart";
import "package:amptric/screens/pages/onboarding.dart";
import "package:amptric/screens/pages/trip.dart";
import "package:amptric/values/constants.dart";
import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";

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
          height: kToolbarHeight,
          backgroundColor: Colors.white,
          color: priAmpColor,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/dashb.png',
                  height: 30,
                ),
                const Positioned(
                    top: 20.0,
                    left: 0.0,
                    right: 0.0,
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    ))

                /*Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: const Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                )
                */
              ],
            ),
            Image.asset(
              'assets/img/charging.png',
              height: 30,
            ),
            Image.asset(
              'assets/img/trips.png',
              height: 30,
            ),
            Image.asset(
              'assets/img/docs.png',
              height: 30,
            ),
            Image.asset(
              'assets/img/more.png',
              height: 30,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
