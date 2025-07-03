import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
    body: Stack(
    children: [
    Positioned(
    top: 0,
    left: 0,
    child: Image.asset(
    'assets/images/shape.png',
    width: size.width * 0.6,
    fit: BoxFit.contain,
    ),
    ),
      Positioned(
        top: 0,
        right: 0,
        child: Image.asset(
          'assets/images/notification.png',
          width: size.width * 0.8,
        ),

      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 220),
          Image.asset(
            'assets/images/undraw_mobile_ux_o0e1 1.png',
          ),
           SizedBox(height: 45),
           Center(
             child: Text(
              'Gets things done with TODO',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
                       ),
           ),
           SizedBox(height: 36),
           Text(
            'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. '
                ' Interdum \n dictum tempus, interdum at dignissim \n metus.'
                ' Ultricies sed nunc.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              height: 1.5
            ),
          ),
          SizedBox(height: 92,),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:  Color(0xFF50C2C9),
              foregroundColor: Colors.white,
              padding: EdgeInsetsGeometry.directional(start: 110, end: 110, top: 20 , bottom: 20),
              shape: RoundedRectangleBorder(),
            ),
            child: Text(
              'Get Started',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          )

        ],
      )

    ],
    ),
    );
  }
}