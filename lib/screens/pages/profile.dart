//import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/server/user.dart";
import "package:flutter/material.dart";
import "package:amptric/style/constants.dart";
import "package:amptric/style/text_style.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height / 100;
    final widths = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: priAmpColor,

        title: const Center(
            child: Text(
          title,
          style: TextStyle(
              fontFamily: 'superstar',
              letterSpacing: 6.0,
              fontSize: 38,
              color: Colors.white),
        )),
        //    title: const Text("This is the 2Page"),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: priAmpColor,
      ),
      body: Column(children: [
        Center(
          heightFactor: heights * 0.25,
          widthFactor: widths,
          child: Text(
            "Profile",
            style: Tfor.label(),
          ),
        ),
        SizedBox(
          height: heights * 10,
          width: widths * 20,
          child: Image.asset(
            'assets/img/user.png',
            height: heights * 8,
          ),
        ),

//Name

        Padding(
          padding: const EdgeInsets.fromLTRB(40, 50, 10, 10),
          child: Row(children: [
            SizedBox(
              height: heights * 7,
              width: widths * 10,
              child: Image.asset(
                'assets/img/name.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                userName,
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),

// Name end

//Gender
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(children: [
            SizedBox(
              height: heights * 7,
              width: widths * 10,
              child: Image.asset(
                'assets/img/equality.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Gender",
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),

// End Gender

// Mobile
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(children: [
            SizedBox(
              height: heights * 7,
              width: widths * 10,
              child: Image.asset(
                'assets/img/smartphone.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                userMobile,
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),

// End Mobile

// End Email
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(children: [
            SizedBox(
              height: heights * 7,
              width: widths * 10,
              child: Image.asset(
                'assets/img/email.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                userEmail,
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),
// End Email

// Address

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(children: [
            SizedBox(
              height: heights * 7,
              width: widths * 10,
              child: Image.asset(
                'assets/img/home.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Address",
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),

// End Address
      ]),
    );
  }
}
