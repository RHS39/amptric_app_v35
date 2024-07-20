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
    return Scaffold(
        backgroundColor: bgColor,
        appBar: const AmpAppBar(),
        drawer: const AmpDrawer(),
        body: Container(
//          color: Colors.black,
          margin: const EdgeInsets.all(10),
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
                  height: 330,
                  child: Container(
                    //color: Colors.green,
                    margin: const EdgeInsets.symmetric(vertical: 30.0),
                    child: const ModelViewer(
                      src: 'assets/testc.glb',
                      autoRotate: true,
                      alt: 'A 3D model of Amptric Trike',
                      //ar: true,
                      disableZoom: false,
                    ),
                  )

                  /*
                child: BabylonJSViewer(
                  src: 'assets/test2.glb',
                ),

                  */
                  //
                  /*
                child: Text(
                  "testit",
                  style: Tfor.ite(),
                ),
              */

                  //BabylonJsViewr()),
                  ),

              //end reserve

              // stat row 1
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Row contents vertically,
                  children: [
                    // Range
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/dashb/route.png',
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Text("Range: ", style: Tfor.ite()),
                              Text("40 KM", style: Tfor.drawerInfo()),
                            ],
                          ),
                        )
                      ],
                    ),
                    // end Range

                    // Battery
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/dashb/battery.png',
                          height: 60,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Battery", style: Tfor.ite())),
                      ],
                    ),
                    // end Battery

                    // TPM
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/dashb/tpm.png',
                          height: 60,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("36 PSI", style: Tfor.ite())),
                      ],
                    ),
                    // end TPM
                  ],
                ),
              ),

              //end stat row 1
              const SizedBox(
                height: 60,
              ),

              // stat row 1
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Row contents vertically,
                  children: [
                    // Mode
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/dashb/eco.png',
                          height: 60,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Mode", style: Tfor.ite())),
                      ],
                    ),
                    // end mode

                    // Geo Fencing
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/dashb/location.png',
                          height: 60,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Geo Fencing", style: Tfor.ite())),
                      ],
                    ),
                    // end Battery

                    // TPM
                    Column(
                      children: [
                        Image.asset(
                          'assets/img/dashb/power.png',
                          height: 60,
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text("Start to End", style: Tfor.ite())),
                      ],
                    ),
                    // end TPM
                  ],
                ),
              ),

              //end stat row 1
            ],
          ),
        ));
  }
}
