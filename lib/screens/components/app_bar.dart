import "package:flutter/material.dart";
import "package:amptric/values/constants.dart";

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
        leading: Builder(
            builder: (context) => IconButton(
                  icon: Image.asset('assets/img/user.png'),
                  iconSize: 5,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )),
        // end profile

        //start title
        title: Center(
            child: Text(
          title,
          style: const TextStyle(
              fontFamily: 'superstar', letterSpacing: 4.0, fontSize: 30),
        )),
        //end title

        //start right icons
        //from left to right
        actions: [
          // start qr icon
          Builder(
              builder: (context) => IconButton.filled(
                    icon: Image.asset('assets/img/qr.png'),
                    iconSize: 5,
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  )),
          // end profile

          // stat bell icon
          Builder(
              builder: (context) => IconButton(
                    icon: Image.asset('assets/img/bell.png'),
                    iconSize: 5,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
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
