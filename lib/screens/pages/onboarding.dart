import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:amptric/style/text_style.dart";
import "package:flutter/material.dart";
import "package:amptric/style/constants.dart";
//import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import "package:model_viewer_plus/model_viewer_plus.dart";

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height / 100;
    final widths = MediaQuery.of(context).size.width / 100;

    return Scaffold(
        backgroundColor: bgColor,
        appBar: const AmpAppBar(),
        drawer: const AmpDrawer(),
        body: Container(
//          color: Colors.black,
          margin: const EdgeInsets.only(top: 15, left: 15),
          child: Column(
            children: [
              //greeting
              Row(
                children: [
                  Text(
                    greeting,
                    style: Tfor.greet(),
                  ),
                  Text(
                    userName,
                    style: Tfor.greet(),
                  ),
                ],
              ),
              //greeting end

              // reserve for 3D object
              SizedBox(
                  height: heights * 40,
                  child: Container(
                    //color: Colors.green,
                    margin: const EdgeInsets.symmetric(vertical: 30.0),
                    child: const ModelViewer(
                      src: 'assets/amp.glb',
                      autoRotate: true,
                      alt: 'A 3D model of Amptric Trike',
                      //ar: true,
                      disableZoom: false,
                    ),
                  )),
              //end reserve 3D

              Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        height: heights * 35,
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            // stat row 1
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, //Center Row contents vertically,
                                children: [
                                  // Range
                                  SizedBox(
                                    height: heights * 15,
                                    width: widths * 25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/img/dashb/route.png',
                                          height: heights * 8,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Row(
                                            children: [
                                              Text("Range: ",
                                                  style: Tfor.ite()),
                                              Text("40 KM",
                                                  style: Tfor.drawerInfo()),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  // end Range

                                  // Battery
                                  SizedBox(
                                    height: heights * 15,
                                    width: widths * 25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/img/dashb/battery.png',
                                          height: heights * 8,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text("Battery",
                                                style: Tfor.ite())),
                                      ],
                                    ),
                                  ),
                                  // end Battery

                                  // TPM
                                  SizedBox(
                                    height: heights * 15,
                                    width: widths * 25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/img/dashb/tpm.png',
                                          height: heights * 8,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text("36 PSI",
                                                style: Tfor.ite())),
                                      ],
                                    ),
                                  ),
                                  // end TPM
                                ],
                              ),
                            ),
/*
                            //end row 1
                            SizedBox(
                              height: heights * 2,
//                      height: 60,
                            ),
*/
                            // stat row 2
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, //Center Row contents vertically,
                                children: [
                                  // Mode
                                  SizedBox(
                                    height: heights * 15,
                                    width: widths * 25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/img/dashb/eco.png',
                                          height: heights * 8,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text("Mode",
                                                style: Tfor.ite())),
                                      ],
                                    ),
                                  ),
                                  // end mode

                                  // Geo Fencing
                                  SizedBox(
                                    height: heights * 15,
                                    width: widths * 25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/img/dashb/location.png',
                                          height: heights * 8,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text("Geo Fencing",
                                                style: Tfor.ite())),
                                      ],
                                    ),
                                  ),
                                  // end geo fence

                                  // Start to end
                                  SizedBox(
                                    height: heights * 15,
                                    width: widths * 25,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/img/dashb/power.png',
                                          height: heights * 8,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 20),
                                            child: Text("Start to End",
                                                style: Tfor.ite())),
                                      ],
                                    ),
                                  ),
                                  // end start to end
                                ],
                              ),
                            ),

                            //end stat row 2
                          ],
                        ),
                      ))

                  // sensor area

                  // end sensor area

                  )

              //end reserve
            ],
          ),
        ));
  }
}
