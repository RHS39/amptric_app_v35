/*
// test
import "package:amptric/screens/onboarding.dart";
import "package:flutter/material.dart";

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _sendToNext();
  }

  _sendToNext() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Onboarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     backgroundColor: bgColor,
      body: Container(
          margin: const EdgeInsets.all(70.0),
          child: Center(child: Image.asset('assets/img/amp.png'))),
    );
  }

  /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     backgroundColor: bgColor,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: [Image.asset('assets/img/gift.png')],
          ),
        ),
      ),
    );
  }
*/
}


*/