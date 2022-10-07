import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScreenLoginPage extends StatelessWidget {
  const ScreenLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 142),
              child: SizedBox(
                height: 240.57,
                width: 416.51,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/logo/Illustration.png'),
                ),
              ),
            ),
            Container(
              height: 5,
              width: double.infinity,
              color: const Color(0xff7EB6B9),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 84),
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
                    'Get Started',
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
            const Padding(
              padding: EdgeInsets.only(bottom: 8, top: 34),
              child: Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "NunitoRegular",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                // code to open / launch login page here
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Nunito",
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff5CBEE6),
                ),
              ),
            ),

            // Code for the terms and condition section

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 26, left: 24, right: 24, top: 59),
                child: SizedBox(
                  width: 326,
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'By proceeding, you agree to our ',
                          style: const TextStyle(
                            fontFamily: "NunitoRegular",
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'terms & conditions',
                              style: const TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                decorationColor: Color(0xff5CBEE6),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // code to open / launch terms of service link here
                                },
                            ),
                            TextSpan(
                              text: ' and read our ',
                              style: const TextStyle(
                                fontFamily: "NunitoRegular",
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'privacy policy.',
                                  style: const TextStyle(
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black,
                                    decorationThickness: 2,
                                    decorationColor: Color(0xff5CBEE6),
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // code to open / launch privacy policy link here
                                    },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
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
