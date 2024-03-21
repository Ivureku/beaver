import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(56, 45, 140, 1),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 430,
                  height: 550,
                  child: Column(
                    // Changed to Column for vertical layout
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        // Center the "Sign Up" text
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight
                                  .bold), // Adjust the style as needed
                        ),
                      ),
                      SizedBox(height: 50),
                      Text("Firstname"),
                      Container(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(182, 164, 251, 1),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Text("Lastname"),
                      Container(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(182, 164, 251, 1),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Text("Email Address"),
                      Container(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(182, 164, 251, 1),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Text("Username"),
                      Container(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(182, 164, 251, 1),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Text("Password"),
                      Container(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(182, 164, 251, 1),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            suffixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                            ),
                          ),
                        ),
                      ),
                      Text("Confirm Password"),
                      Container(
                        child: TextField(
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(182, 164, 251, 1),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            suffixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'lib/');
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(96, 78, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                minimumSize: Size(200.0, 40.0))),
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
