import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:amptric/style/constants.dart";
import "package:flutter/material.dart";

class Docs extends StatefulWidget {
  const Docs({super.key});

  @override
  State<Docs> createState() => _DocsState();
}

class _DocsState extends State<Docs> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      drawer: AmpDrawer(),
      appBar: AmpAppBar(),
    );
  }
}
