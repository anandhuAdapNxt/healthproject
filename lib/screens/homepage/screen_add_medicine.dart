import 'package:flutter/material.dart';
import 'package:healthproject/screens/widgets/bottom_nav.dart';

//This is the add medicine screen widget

class ScreenAddMedicine extends StatelessWidget {
  const ScreenAddMedicine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5CE0E6),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xff5CE0E6),
              blurRadius: 10,
            ),
          ],
        ),

        // Bottom Navigation (Custom Widget) Created on another Dart file in the Widget Folder

        child: const BottomNavigation(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 51, left: 109, right: 109),
                  child: Text(
                    'Adherence score',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: "Nunito800",
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 8, right: 23),
                  child: Container(
                    height: 15,
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        colors: <Color>[
                          Color(0xff56FFF0),
                          Color(0xff56FF5F),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                const Image(
                  image: AssetImage('assets/logo/Polygon.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 14, left: 113, right: 112),
                  child: Container(
                    height: 41,
                    width: 192,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(59),
                    ),
                    child: const Center(
                      child: Text(
                        'Take your meds on time',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontFamily: "Nunito600",
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // The White color expanded container (also the containers inside this section) in add medicine Screen Starts Here

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 37),
                        child: Container(
                          width: 335,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color(0xffFFD995),
                              width: 1.5,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  left: 16,
                                ),
                                child: Container(
                                  width: 105,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFD995),
                                    borderRadius: BorderRadius.circular(39),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      '8:00am',
                                      style: TextStyle(
                                        color: Color(0xff000000),
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "Nunito600",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  top: 54,
                                ),
                                child: Text(
                                  'Paracaine',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Nunito",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                  top: 88,
                                  bottom: 13,
                                ),
                                child: Text(
                                  'Take 5.4ml from cabinet 2',
                                  style: TextStyle(
                                    color: Color(0xff898989),
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "NunitoRegular",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 280, top: 5),
                                child: TextButton(
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                  ),
                                  onPressed: () {
                                    // code to open / launch edit page here
                                  },
                                  child: const Text(
                                    'edit',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Nunito",
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff5CBEE6),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
