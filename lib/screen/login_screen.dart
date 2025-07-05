import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/bg_top_left_circles_img.png',
              width: MediaQuery.of(context).size.width * 0.6,
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/mobile_life.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 50),
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
                SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: TextField(
                    obscureText: true,
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
                SizedBox(height: 30),
                Text("Forgot  password", style: TextStyle(fontSize: 17, color: Color(0xFF50C2C9))),
                SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF50C2C9),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, fontFamily: "Poppins")),
                    Text("Sign Up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 14, fontFamily: "Poppins")),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}