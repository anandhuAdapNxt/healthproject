import 'package:flutter/material.dart';
import 'package:healthproject/screens/widgets/bottom_nav.dart';

//This is the Homepage of This App

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

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
          //The Top section Starts From this column

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
                  child: SizedBox(
                    height: 41,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(59),
                        ),
                      ),
                      onPressed: () {
                        //code to open / launch begin to score screen here
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Begin to score',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: "Nunito600",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 17,
                            color: Color(0xff5CBEE6),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // The White color section (also the containers inside this section) In HomeScreen Starts Here

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(44),
                      topRight: Radius.circular(44),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: SizedBox(
                          width: 325,
                          height: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                width: 1.5,
                                color: Color(0xff5CE0E6),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: const Color(0xffD9D9D9),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('addMedicinePage');
                            },
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 13, 34, 14),
                                  child: SizedBox(
                                    width: 93,
                                    height: 93,
                                    child: Image(
                                      image:
                                          AssetImage("assets/logo/tablet.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Add medicine',
                                  style: TextStyle(
                                    fontFamily: "Nunito600",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: SizedBox(
                          width: 325,
                          height: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: const Color(0xff5CE0E6),
                            ),
                            onPressed: () {
                              //code to open / launch Pair your device screen  here
                            },
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(18, 13, 34, 14),
                                  child: SizedBox(
                                    width: 93,
                                    height: 93,
                                    child: Image(
                                      image:
                                          AssetImage("assets/logo/case2.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Pair your device',
                                  style: TextStyle(
                                    fontFamily: "Nunito600",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                )
                              ],
                            ),
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
