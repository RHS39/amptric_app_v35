import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:amptric/style/constants.dart";
import "package:amptric/style/text_style.dart";
import "package:flutter/material.dart";

class MyTrips extends StatefulWidget {
  const MyTrips({super.key});

  @override
  State<MyTrips> createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTrips> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height / 100;
    final widths = MediaQuery.of(context).size.width / 100;

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
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              mainAxisExtent: 120,
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                //alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: priLigAmpColor,
                ),
                child: ListView(children: [
                  Row(
                    children: [
                      SizedBox(
                        width: widths * 44,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 13, 0, 13),
                          child: Column(
                            // attributes and values
                            children: [
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("Date",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("19/10/2024",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("Start Time",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("02:47 pm",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("Start Location",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("Malad E",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("Avg Speed",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("45 km/hr",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),

                              /*
                                      Text("Start Location",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripDetail()),
                                      Text("End Location",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripDetail()),
                                      Text("Avg Speed",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripDetail()),
                                    */
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: widths * 44,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 13, 0, 13),
                          child: Column(
                            // attributes and values
                            children: [
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("Duration",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("15 min",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("End Time",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("30:02 pm",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("End Location",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("Andheri W",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: heights * 2.5,
                                width: widths * 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: SizedBox(
                                        //                                    height: heights * 5,
                                        width: widths * 17,
                                        child: Text("Distance",
                                            textAlign: TextAlign.left,
                                            style: Tfor.tripDetail()),
                                      ),
                                    ),
                                    SizedBox(
                                      width: widths * 20,
                                      child: Text("8.71 km",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripValue()),
                                    ),
                                  ],
                                ),
                              ),

                              /*
                                      Text("Start Location",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripDetail()),
                                      Text("End Location",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripDetail()),
                                      Text("Avg Speed",
                                          textAlign: TextAlign.left,
                                          style: Tfor.tripDetail()),
                                    */
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]

                    /*
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: GridView.builder(
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
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black,
                            ),
                            child: Text("value: $value"),
                          );
                        },
                      ),
                    ),


                    */

                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
