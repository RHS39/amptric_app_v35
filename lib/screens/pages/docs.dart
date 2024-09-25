import "package:amptric/screens/components/app_bar.dart";
import "package:amptric/screens/components/drawer.dart";
import "package:amptric/style/constants.dart";
import "package:amptric/style/text_style.dart";
import "package:flutter/material.dart";

class Docs extends StatefulWidget {
  const Docs({super.key});

  @override
  State<Docs> createState() => _DocsState();
}

class _DocsState extends State<Docs> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size.height / 100;
    final widths = MediaQuery.of(context).size.width / 100;

    return Scaffold(
        backgroundColor: bgColor,
        drawer: const AmpDrawer(),
        appBar: const AmpAppBar(),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                  child: Row(
                    children: [
                      // DL
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          shadowColor: priAmpColor,
                          color: Colors.white,
                          elevation: 20,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/dl.png',
                                    height: heights * 9,
                                    width: widths * 25,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text("DL", style: Tfor.ite())),
                                ],
                              )),
                        ),
                      ),
                      // DL Ends

                      // RC Book
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          shadowColor: priAmpColor,
                          color: Colors.white,
                          elevation: 20,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/rc.png',
                                    height: heights * 9,
                                    width: widths * 25,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child:
                                          Text("RC Book", style: Tfor.ite())),
                                ],
                              )),
                        ),
                      )

                      // RC Book ends
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                  child: Row(
                    children: [
                      // DL
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          shadowColor: priAmpColor,
                          color: Colors.white,
                          elevation: 20,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/insurance.png',
                                    height: heights * 9,
                                    width: widths * 25,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text("Policy", style: Tfor.ite())),
                                ],
                              )),
                        ),
                      ),
                      // DL Ends

                      // RC Book
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          shadowColor: priAmpColor,
                          color: Colors.white,
                          elevation: 20,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/more1.png',
                                    height: heights * 9,
                                    width: widths * 25,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text("Upload", style: Tfor.ite())),
                                ],
                              )),
                        ),
                      )

                      // RC Book ends
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                  child: Row(
                    children: [
                      // DL
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          shadowColor: priAmpColor,
                          color: Colors.white,
                          elevation: 20,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/more1.png',
                                    height: heights * 9,
                                    width: widths * 25,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text("Upload", style: Tfor.ite())),
                                ],
                              )),
                        ),
                      ),
                      // DL Ends

                      // RC Book
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          shadowColor: priAmpColor,
                          color: Colors.white,
                          elevation: 20,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/img/more1.png',
                                    height: heights * 9,
                                    width: widths * 25,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text("Upload", style: Tfor.ite())),
                                ],
                              )),
                        ),
                      )

                      // RC Book ends
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
