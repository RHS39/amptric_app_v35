import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:flutter/material.dart";
import "package:amptric/values/constants.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      drawer: AmpDrawer(),
      appBar: AmpAppBar(),
    );
  }
}



/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [Image.asset('assets/img/amp.png')],
        ),
      ),
    );
  }
*/



