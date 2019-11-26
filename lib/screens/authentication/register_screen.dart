import 'package:flutter/material.dart';

import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:tel_input/tel_input.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = "/register";

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
                            Icons.phone,
                            color: Colors.grey,
                          ),
                        ),
                        Flexible(
                          flex: 10,
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Phone Number",
                                // prefixIcon: Icon(Icons.phone),
                                // border: OutlineInputBorder(
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(25),
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Icon(Icons.lock, color: Colors.grey,),
                        ),
                        Flexible(
                          flex: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText: "Password",
                                // prefixIcon: Icon(Icons.lock),
                                // border: OutlineInputBorder(
                                //   borderRadius:
                                //       BorderRadius.all(Radius.circular(25)),
                                // ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width * 0.5,
                    //     child: TelInput(
                    //       dialCode: '+254',
                    //       includeDialCode: true,
                    //       onChange: (String phoneNumber) =>
                    //           print('phoneNumber: $phoneNumber'),
                    //     ),
                    //   ),
                    // ),
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
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/login");
                        },
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
