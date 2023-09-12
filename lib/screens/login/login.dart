import 'dart:convert';

import 'package:admin/configs/env.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPressed = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String url = Configs().db + '/login';
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          primary: false,
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              Container(
                width: width,
                height: height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: height * .15),
                      height: height * .35,
                      width: width * .4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Colors.white.withOpacity(0.8),
                            Colors.white70.withOpacity(0.5)
                          ])),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  height: width * .05,
                                  width: width * .05,
                                  child: Image.asset(
                                      'assets/images/nepal_sarkar.png')),
                              Text(
                                'महिला उद्यमशीलता व्यवस्थापन प्रणाली',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * .015),
                              ),
                              SizedBox(
                                  height: width * .05,
                                  width: width * .05,
                                  child: Image.asset('assets/images/lmc.png'))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'प्रयोगक्रताः',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: width * .02,
                                  ),
                                  Text(
                                    'पास्वर्ड',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * .02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: width * .15,
                                    height: height * .05,
                                    child: TextFormField(
                                      controller: usernameController,
                                      decoration: InputDecoration(
                                        labelText: 'प्रयोगकर्ता',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Adjust the border radius as needed
                                        ),
                                        // Remove the default underline
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black87, width: 1),
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Adjust the border radius as needed
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Adjust the border radius as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: width * .02,
                                  ),
                                  SizedBox(
                                    width: width * .15,
                                    height: height * .05,
                                    child: TextFormField(
                                      controller: passwordController,
                                      obscureText: true,
                                      obscuringCharacter: '⚫',
                                      decoration: InputDecoration(
                                        labelText: 'पास्वर्ड यता हाल्नुहोस',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Adjust the border radius as needed
                                        ),
                                        // Remove the default underline
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black87, width: 1),
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Adjust the border radius as needed
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                          borderRadius: BorderRadius.circular(
                                              10.0), // Adjust the border radius as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: width * .02,
                          ),
                          GestureDetector(
                            onTapDown: (_) async {
                              setState(() {
                                isPressed = true;
                              });
                              var request = http.MultipartRequest('POST', Uri.parse('http://103.140.1.138:8000/login'));
                              request.fields.addAll({
                                'user[email]': usernameController.text.toString(),
                                'user[password]': passwordController.text.toString()
                              });

                              http.StreamedResponse response = await request.send();

                              if (response.statusCode == 201) {
                                print(await response.stream.bytesToString());
                                print(response.statusCode);
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MainScreen()));
                              }
                              else {
                                print(response.reasonPhrase);
                                print(response.statusCode);
                              }

                            },
                            onTapUp: (_) {
                              setState(() {
                                isPressed = false;
                              });
                            },
                            onTapCancel: () {
                              setState(() {
                                isPressed = false;
                              });
                            },
                            onTap: () {
                              // Add your login logic here
                            },
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        isPressed ? Colors.grey : Colors.white,
                                    offset: Offset(-5, -5),
                                    blurRadius: 15,
                                  ),
                                  BoxShadow(
                                    color:
                                        isPressed ? Colors.grey : Colors.grey,
                                    offset: Offset(5, 5),
                                    blurRadius: 15,
                                  ),
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    isPressed
                                        ? Colors.blueGrey
                                        : Colors.lightBlue.withOpacity(0.4),
                                    isPressed
                                        ? Colors.blueGrey
                                        : Colors.lightBlue.withOpacity(0.4),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
