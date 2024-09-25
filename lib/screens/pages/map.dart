import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:amptric/style/constants.dart";
import "package:flutter/material.dart";

/*
import "package:flutter_map/flutter_map.dart";
import "package:latlong2/latlong.dart";
import "package:http/http.dart";
import "dart:convert" as convert;
*/
class AmpMap extends StatefulWidget {
  const AmpMap({super.key});

  @override
  State<AmpMap> createState() => _AmpMapState();
}

class _AmpMapState extends State<AmpMap> {
  final String apiKey = "5415a";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      drawer: AmpDrawer(),
      appBar: AmpAppBar(),
      body: Center(
          //color: Colors.yellow,
          child: Stack(children: <Widget>[]
              /*[
              options: new MapOptions(center: tomtomQ, zoom: 13.0),
              layers:[
                new TileLayerOptions(urlTemplate: "https://api.tomtom.com/map/1/")
              ],
              ],*/

              )),
    );
  }
}
