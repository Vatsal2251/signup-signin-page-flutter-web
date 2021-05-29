import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:independent_worker/home_page.dart';
import 'package:independent_worker/reset_page.dart';
import 'package:independent_worker/signup_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff374ABE),
                  Color(0xff64B6FF),
                  //Color(0xffff9966),
                  //Color(0xffff99cc),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'images/logo.png',
                  height: 90,
                  width: 90,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Welcome To Independent Worker',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 370,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Please Login into your Account',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Form(
                          key: _key,
                          child: Column(
                            children: [
                              Container(
                                width: 250,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Please Enter Email Address";
                                    } else if (!RegExp(
                                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                        .hasMatch(value)) {
                                      return "Please Enter Valid Email Address";
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Email Id',
                                    suffixIcon: Icon(
                                      FontAwesomeIcons.envelope,
                                      size: 17,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Please Enter Password";
                                    } else if (value.length < 6) {
                                      return "Password should be at least 6 letters";
                                    } else {
                                      return null;
                                    }
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    suffixIcon: Icon(
                                      FontAwesomeIcons.eyeSlash,
                                      size: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40.0,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          onPressed: () {
                            if (_key.currentState.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff374ABE),
                                    Color(0xff64B6FF),
                                    //Color(0xffff9966),
                                    //Color(0xffff99cc),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth: 250.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                              child: Text(
                                'Forgot Password!',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPage()),
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccPage()),
                              ),
                              child: Text(
                                "Don't have Account?",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Or Sign up Using Social Media',
                        style: TextStyle(
                          color: Colors.blueAccent[100],
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(FontAwesomeIcons.google,
                              color: Colors.blueAccent),
                          Icon(FontAwesomeIcons.twitter,
                              color: Colors.blueAccent),
                          Icon(FontAwesomeIcons.facebook,
                              color: Colors.blueAccent),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
