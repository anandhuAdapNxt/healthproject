import 'package:flutter/material.dart';

// This is the splash screen widget for this app

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.pushReplacementNamed(context, "loginPage");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Image(
              image: AssetImage(
                'assets/images/splash.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: const [
              Image(
                image: AssetImage('assets/images/Vector1.png'),
              ),
              Spacer(),
              Image(
                image: AssetImage('assets/images/Vector2.png'),
              )
            ],
          ),
          const Positioned(
            top: 309,
            left: 80,
            child: Image(
              image: AssetImage(
                'assets/images/image.png',
              ),
            ),
          ),
          const Positioned(
            top: 461,
            left: 69,
            child: Text(
              'Making Medication Connected',
              style: TextStyle(
                color: Color(0xff3B6F72),
                fontStyle: FontStyle.normal,
                fontFamily: "Nunito",
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

//dispose and change dependencies methods

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
