import 'package:flutter/material.dart';
import 'package:proj1/screens/login.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 240, 255),
      body: Center(
        child: itemCard(context),
      ),
    );
  }

  Card itemCard(BuildContext context) {
    return Card(
      child: Container(
        width: 1000,
        height: 700,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://media1.tenor.com/m/taAwoRxkjBIAAAAd/chinese-beaver.gif',
                      )),
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(90, 20, 80, 90),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 14,
                          width: 12,
                          color: Color.fromRGBO(110, 88, 246, 1),
                        ),
                        ItemTag(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Asombrado',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Enter your email and password to login our dashboard',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Email"),
                        Container(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Enter email',
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
                        SizedBox(
                          height: 20,
                        ),
                        Text("Password"),
                        Container(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
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
                                child: Icon(
                                  Icons.remove_red_eye,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'lib/');
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(96, 78, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  minimumSize: Size(150.0, 40.0))),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Text(
                              "Don't have an account?",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 61, 248, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text("Forgot Password?",
                            style: TextStyle(
                                color: Color.fromRGBO(83, 61, 248, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container ItemTag() {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(3))),
        child: Text(
          " TYLET",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0),
              letterSpacing: 1),
        ));
  }
}
