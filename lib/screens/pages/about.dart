import 'package:flutter/material.dart';
import "package:amptric/style/constants.dart";
import "package:amptric/style/text_style.dart";

class About extends StatelessWidget {
  const About({super.key});

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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Center(
            heightFactor: heights * 0.2,
            widthFactor: widths,
            child: Text(
              "About Us",
              style: Tfor.label(),
            ),
          ),
        ),

// About Amptric

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(children: [
            SizedBox(
              height: heights * 12,
              width: widths * 10,
              child: Image.asset(
                'assets/img/amp.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "About Amptric",
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),

// About Amptric end

// Privacy Policy
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(children: [
            SizedBox(
              height: heights * 12,
              width: widths * 10,
              child: Image.asset(
                'assets/img/file.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Privacy Policy",
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),

// Privacy Policy End

// Terms & Conditions
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(children: [
            SizedBox(
              height: heights * 12,
              width: widths * 10,
              child: Image.asset(
                'assets/img/terms.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Terms & Conditions",
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),

// Terms & Condition Ends

// Opensource License
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(children: [
            SizedBox(
              height: heights * 12,
              width: widths * 10,
              child: Image.asset(
                'assets/img/certificate.png',
                height: heights * 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Opensource License",
                style: Tfor.discribe(),
              ),
            ),
          ]),
        ),
// Opensource License Ends
      ]),
    );
  }
}
