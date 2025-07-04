import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/bg_top_left_circles_img.png',
                width: size.width * 0.6,
                fit: BoxFit.contain,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 130,),
                  Text("Welcome Onboard!" , style: TextStyle(fontSize: 22, fontWeight:FontWeight.w600), ),
                  SizedBox(height: 14),
                  Text("Let's help you meet up your tasks" , style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,color: Colors.grey),),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 300,

                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your full name',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                        filled: true,
                        fillColor: Colors.blue,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),

                        filled: true,
                        fillColor: Colors.blue,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),

                        filled: true,
                        fillColor: Colors.blue,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.white),

                        filled: true,
                        fillColor: Colors.blue,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF50C2C9),
                      foregroundColor: Colors.white,
                      padding: EdgeInsetsGeometry.directional(
                        start: 110,
                        end: 110,
                        top: 20,
                        bottom: 20,
                      ),
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
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ? ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,fontFamily: "Poppins"),),
                      Text("Sign In",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600, fontSize: 14,fontFamily: "Poppins"),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
