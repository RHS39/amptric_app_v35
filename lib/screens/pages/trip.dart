import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:amptric/style/constants.dart";
//import "package:amptric/style/text_style.dart";
import "package:flutter/material.dart";

class MyTrips extends StatefulWidget {
  const MyTrips({super.key});

  @override
  State<MyTrips> createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTrips> {
  @override
  Widget build(BuildContext context) {
    //final heights = MediaQuery.of(context).size.height / 100;
    //final widths = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: const AmpAppBar(),
      drawer: const AmpDrawer(),
      body: ListView(
        children: <Widget>[
          const Text("Title 1"),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 3 / 1,
              crossAxisSpacing: 30.0,
              mainAxisSpacing: 20.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                //alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: ListView(
                  children: <Widget>[
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 8 / 1,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, value) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          //alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black,
                          ),
                          child: Text("value: $value"),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
