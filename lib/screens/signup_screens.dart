import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screens.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/clock.jpg"),
            fit: BoxFit.cover, // Mengisi seluruh latar belakang dengan gambar
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 15), // Penyesuaian tinggi
                Padding(
                  padding: EdgeInsets.all(5),
                  // Image.asset("images/clock.jpg"), // Gambar ini dapat dihapus jika tidak diperlukan lagi
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white
                          .withOpacity(0.8), // Warna latar belakang input
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white
                          .withOpacity(0.8), // Warna latar belakang input
                      filled: true,
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white
                          .withOpacity(0.8), // Warna latar belakang input
                      filled: true,
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: TextField(
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white
                          .withOpacity(0.8), // Warna latar belakang input
                      filled: true,
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
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
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
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          child: Center(
                            child: Text(
                              "Create Account",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
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
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Log In",
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
    );
  }
}
