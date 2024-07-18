import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:amptric/style/constants.dart";
import "package:flutter/material.dart";

class AmpMap extends StatefulWidget {
  const AmpMap({super.key});

  @override
  State<AmpMap> createState() => _AmpMapState();
}

class _AmpMapState extends State<AmpMap> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      drawer: AmpDrawer(),
      appBar: AmpAppBar(),
    );
  }
}
