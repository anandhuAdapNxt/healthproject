import 'package:flutter/material.dart';
import 'package:healthproject/screens/registerpage/date_picker.dart';
import 'package:unicons/unicons.dart';

enum CategoryType { male, female, other }

class ScreenRegistration extends StatelessWidget {
  ScreenRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5CE0E6),
      body: SafeArea(
        child: Column(
          //The Top section Starts From this column

          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 99, right: 103, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Nunito800',
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      Text(
                        'Lets create your profile',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'NunitoRegular',
                            fontStyle: FontStyle.normal,
                            color: Color(0xff333333)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 31,
                    left: 306,
                  ),
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      //code to skip registration page to
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'skip',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontFamily: "NunitoRegular",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          UniconsLine.angle_double_right,
                          size: 25,
                          color: Color(0xff333333),
                        ),
                      ],
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 210, top: 41),
                          child: Text(
                            'Enter your name',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'NunitoRegular',
                              fontStyle: FontStyle.normal,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SizedBox(
                            width: 327,
                            height: 44,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333),
                                fontFamily: "Nunito600",
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 11.0, horizontal: 25),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffCECECE),
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Aravind Ranganadhan",
                                fillColor: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 222, top: 24),
                          child: Text(
                            'Choose gender',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                              fontFamily: "NunitoRegular",
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: CategoryType.male,
                                      groupValue: CategoryType.male,
                                      onChanged: (mewValue) {}),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                      fontFamily: "Nunito600",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: false,
                                    groupValue: CategoryType.male,
                                    onChanged: (mewValue) {},
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                      fontFamily: "Nunito600",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: false,
                                    groupValue: CategoryType.male,
                                    onChanged: (mewValue) {},
                                  ),
                                  Text(
                                    "Other",
                                    style: TextStyle(
                                      fontFamily: "Nunito600",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 235, top: 35),
                          child: Text(
                            'Date of birth',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                              fontFamily: "NunitoRegular",
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DatePicker(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 32),
                          child: SizedBox(
                            width: 327,
                            height: 44,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff5CE0E6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed("homePage");
                              },
                              child: const Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Nunito600",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
