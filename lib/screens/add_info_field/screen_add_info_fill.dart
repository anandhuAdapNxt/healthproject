import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:unicons/unicons.dart';

class ScreenAddInfoFill extends StatelessWidget {
  const ScreenAddInfoFill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 38.49,
              left: 10.63,
            ),
            child: IconButton(
              color: Color(0xff111111),
              onPressed: () {},
              icon: Icon(
                UniconsLine.angle_left,
                size: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 112, top: 53),
            child: Text(
              "Add Medicine Info",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: "Nunito",
                fontSize: 18,
                fontStyle: FontStyle.normal,
                color: Color(0xff111111),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 314, top: 42),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff5CE0E6)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 121),
            child: Text(
              'Medicine Name',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: 'NunitoRegular',
                fontStyle: FontStyle.normal,
                color: Color(0xff898989),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 147, left: 24),
            child: SizedBox(
              width: 327,
              height: 44,
              child: TextFormField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0x898989),
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
                  hintStyle: TextStyle(color: Color(0xff898989)),
                  hintText: "enter name",
                  fillColor: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
