import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar_roots.dart';
import 'signup_screens.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/clock.jpg"),
            fit: BoxFit.cover, // Gambar akan menutupi seluruh area container
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.all(20.0), // Tambahkan padding keseluruhan
              child: Column(
                children: [
                  SizedBox(
                      height:
                          50), // Jarak di bagian atas untuk menghindari overlap dengan status bar
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white
                            .withOpacity(0.8), // Warna latar belakang input
                        filled: true,
                        labelText: "Enter Username",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      obscureText: passToggle,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white
                            .withOpacity(0.8), // Warna latar belakang input
                        filled: true,
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(
                            passToggle
                                ? CupertinoIcons.eye_slash_fill
                                : CupertinoIcons.eye_fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Material(
                        color: Color(0xFF7165D6),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavBarRoots(),
                                ));
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            child: Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have any account?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ));
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7165D6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
