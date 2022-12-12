import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traverse/src/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.quicksand(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(132, 59, 114, 1)),
                  ),
                  Text(
                    "Create new account",
                    style: GoogleFonts.kantumruy(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(191, 191, 191, 1)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Name",
                    style: GoogleFonts.kantumruy(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(191, 191, 191, 1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 0, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Image.asset("assets/icons/email.png"),
                          fillColor: Colors.grey[250],
                          hintText: "Rafni",
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Email",
                    style: GoogleFonts.kantumruy(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(191, 191, 191, 1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 0, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Image.asset("assets/icons/user.png"),
                          fillColor: Colors.grey[250],
                          hintText: "Rafni666@gmail.com",
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.kantumruy(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(191, 191, 191, 1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 0, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Image.asset("assets/icons/pass.png"),
                          fillColor: Colors.grey[250],
                          hintText: "********",
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // Text(
                  //   "Confirm Password",
                  //   style: GoogleFonts.kantumruy(
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.normal,
                  //       color: Color.fromRGBO(191, 191, 191, 1)),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 5, left: 0, right: 15),
                  //   child: TextFormField(
                  //     decoration: InputDecoration(
                  //         prefixIcon: Image.asset("assets/icons/pass.png"),
                  //         fillColor: Colors.grey[250],
                  //         hintText: "********",
                  //         filled: true,
                  //         enabledBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(40),
                  //             borderSide: BorderSide(color: Colors.transparent))),
                  //   ),
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(132, 59, 144, 1),
                        Color.fromRGBO(218, 56, 97, 1),
                        Color.fromRGBO(244, 173, 92, 1)
                      ]),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        //make color or elevated button transparent
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 120.0, right: 120, top: 15, bottom: 15),
                        child: Text("Sign Up"),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "or sign up with",
                      style: GoogleFonts.kantumruy(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(191, 191, 191, 1)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/Facebook.png"),
                      Image.asset("assets/icons/Google.png"),
                      Image.asset("assets/icons/Apple Id.png"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have account ?",
                        style: GoogleFonts.kantumruy(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                          child: Text("Sign In",
                              style: GoogleFonts.kantumruy(
                                  fontSize: 12,
                                  color: Color.fromRGBO(218, 56, 97, 1))))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
