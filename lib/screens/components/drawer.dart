import "package:amptric/style/constants.dart";
import "package:amptric/screens/components/drawer_items.dart";
import "package:amptric/screens/pages/profile.dart";
import "package:flutter/material.dart";

class AmpDrawer extends StatelessWidget {
  const AmpDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Colors.white,
            //color: secAmpColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 80, 24, 0),
              child: Column(
                children: [
                  headerWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(thickness: 1, height: 10, color: priAmpColor),
                  const SizedBox(
                    height: 30,
                  ),
                  //Profile
                  AmpDrawerItems(
                    name: "Profile",
                    icon: Icons.account_circle_outlined,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),

                  // About
                  AmpDrawerItems(
                    name: "About",
                    icon: Icons.info,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),

                  //Contact Us
                  AmpDrawerItems(
                    name: "Contact Us",
                    icon: Icons.add_ic_call_outlined,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),

                  // setting
                  AmpDrawerItems(
                    name: "Settings",
                    icon: Icons.settings,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),

                  // Logout
                  AmpDrawerItems(
                    name: "LogOut",
                    icon: Icons.logout_outlined,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),
                ],
              ),
            )));
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile()));
        break;
      default:
    }
  }

  Widget headerWidget() {
    return const Row(
      children: [
        Image(
          image: AssetImage('assets/img/user.png'),
          height: 80,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sachin Singh',
                style: TextStyle(fontSize: 14, color: priAmpColor)),
            SizedBox(
              height: 10,
            ),
            Text('sachin@gmail.com',
                style: TextStyle(fontSize: 14, color: priAmpColor))
          ],
        )
      ],
    );
  }
}
