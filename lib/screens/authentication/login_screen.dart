import 'package:flutter/material.dart';

import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Stack(
                  children: <Widget>[
                    RotatedBox(
                      quarterTurns: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: WaveWidget(
                          config: CustomConfig(
                            gradients: [
                              [Colors.deepPurple, Colors.deepPurple.shade200],
                              [
                                Colors.indigo.shade200,
                                Colors.purple.shade200,
                              ],
                            ],
                            durations: [194440, 10800],
                            heightPercentages: [-0.09, -0.07],
                            blur: MaskFilter.blur(BlurStyle.solid, 20),
                            gradientBegin: Alignment.bottomLeft,
                            gradientEnd: Alignment.topRight,
                          ),
                          waveAmplitude: 1,
                          size: Size(double.infinity,
                              MediaQuery.of(context).size.height),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 40.0),
                      // height: MediaQuery.of(context).size.height * 0.3,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/headphone.png",
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                          Text(
                            "Mellodis",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Icon(
                            Icons.face,
                            color: Colors.grey,
                          ),
                        ),
                        Flexible(
                          flex: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Username",
                                // prefixIcon: Icon(Icons.face),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(25),
                                //   ),
                                // ),
                                // border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Icon(Icons.phone, color: Colors.grey,),
                        ),
                        Flexible(
                          flex: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: "Password",
                                // prefixIcon: Icon(Icons.phone_android),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.all(Radius.circular(25)),
                                // ),
                                // border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed("/home");
                        },
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "OR",
                              style: TextStyle(
                                  backgroundColor: Colors.white10,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Text(
                      "Sign up with",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.height * 0.15,
                          child: OutlineButton.icon(
                            // padding: const EdgeInsets.symmetric(
                            //   vertical: 10,
                            //   horizontal: 30,
                            // ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            highlightedBorderColor: Colors.indigo,
                            borderSide: BorderSide(
                              color: Colors.indigo,
                            ),
                            color: Colors.indigo,
                            textColor: Colors.indigo,
                            icon: Icon(
                              FontAwesomeIcons.facebookF,
                              size: 18,
                            ),
                            label: Text("Facebook"),
                            onPressed: () {},
                          ),
                        ),
                        // Text("Or"),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.height * 0.15,
                          child: OutlineButton.icon(
                            // padding: const EdgeInsets.symmetric(
                            //   vertical: 10,
                            //   horizontal: 30,
                            // ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            highlightedBorderColor: Colors.red,
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                            color: Colors.red,
                            textColor: Colors.red,
                            icon: Icon(
                              FontAwesomeIcons.google,
                              size: 18,
                            ),
                            label: Text("Gmail"),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/register");
                      },
                      child: Text(
                        "Create an account",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}