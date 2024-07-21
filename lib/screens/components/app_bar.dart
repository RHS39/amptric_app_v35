import "dart:math";

import "package:flutter/material.dart";
import "package:amptric/style/constants.dart";

class AmpAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title = "AMPTRIC";
  final List<Widget> actions;

  const AmpAppBar({
    super.key,
    this.actions = const [],
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: priAmpColor,
        // start profile icon
        leading: Container(
          padding: const EdgeInsets.only(left: 0),
          child: Builder(
              builder: (context) => IconButton(
                    icon: Image.asset(
                      'assets/img/user.png',
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  )),
        ),
        // end profile

        //start title
        title: Center(
            child: Text(
          title,
          style: const TextStyle(
              fontFamily: 'superstar',
              letterSpacing: 6.0,
              fontSize: 38,
              color: Colors.white),
        )),
        //end title

        //start right icons
        //from left to right
        actions: [
          // start qr icon

          //test
          //test
          //test
          //test
          Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Colors.white,
              ),
              child: Center(
                child: Image.asset(
                  'assets/img/qr.png',
                  height: 32,
                ),
              ),
            ),
          ),

          // end qr

          // stat bell icon
          Builder(
              builder: (context) => IconButton(
                    icon: Image.asset('assets/img/bell.png'),
                    iconSize: 5,
                    onPressed: () {},
                  )),
          // end bell icon
        ]

        // You can customize more properties of AppBar here if needed
        // For example:
        // backgroundColor: Colors.blue,
        // elevation: 4.0,
        // brightness: Brightness.dark,
        // etc.
        );
  }
}

/*
class AppBarAmp extends StatelessWidget implements PreferredSize {
  final Widget? leading;
  final List<Widget>? actions;
  const AppBarAmp({super.key, this.leading, this.actions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
          title: const Text("title"), leading: leading, actions: actions),
    );
  }

  @override
  // TODO: implement child
  Size get PreferredSize => const Size.fromHeight(kToolbarHeight + 50);
}*/
