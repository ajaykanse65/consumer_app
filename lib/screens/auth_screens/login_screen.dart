import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zippy_consumer_app/models/otpModel.dart';
import 'package:zippy_consumer_app/screens/main_screens/dashboard.dart';
import 'package:zippy_consumer_app/screens/services/auth_service.dart';
import 'package:zippy_consumer_app/screens/services/login_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileNo = TextEditingController();
  TextEditingController otpOne = TextEditingController();
  TextEditingController otpTwo = TextEditingController();
  TextEditingController otpThree = TextEditingController();
  TextEditingController otpFour = TextEditingController();
  bool isVisible = false;
  OtpModel? otpModel;
  Data? data;

  @override
  void initState() {
    setState(() {
      isVisible = false;
    });
    super.initState();
  }

  @override
  void dispose() {
    mobileNo.dispose();
    otpOne.dispose();
    otpTwo.dispose();
    otpThree.dispose();
    otpFour.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7FBFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 41, left: 74, right: 70),
                child: Image.asset('assets/zippy_logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 78),
                child: Text(
                  "Enter Mobile Number",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: Container(
                    height: 45,
                    width: 309,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 5.0,
                            spreadRadius: 0.1,
                            offset: Offset(
                              -1,
                              3.8,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xffFFFFFF)),
                    child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                      ],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: mobileNo,
                      decoration: InputDecoration(
                          hintText: '+91 00000 00000',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 20),
                          border: InputBorder.none),
                    )),
              ),
              SizedBox(
                height: 42,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (mobileNo.text.isNotEmpty) {
                      SSPConstants.userLogin(mobileNo: mobileNo.text);
                      // print(otpModel?.status);
                      setState(() {
                        isVisible = true;
                      });
                    } else {
                      final alert = AlertDialog(
                        content: Text(
                          'Mobile No is Required',
                          style: const TextStyle(color: Colors.red),
                        ),
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    }
                  },
                  child: Text("Send OTP")),
              SizedBox(
                height: 40,
              ),
              Visibility(
                visible: isVisible,
                child: Column(
                  children: [
                    Text(
                      "Enter OTP",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.1,
                                      offset: Offset(
                                        -1,
                                        3.8,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xffFFFFFF)),
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                                controller: otpOne,
                                decoration: InputDecoration(
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                    border: InputBorder.none),
                              )),
                          Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.1,
                                      offset: Offset(
                                        -1,
                                        3.8,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xffFFFFFF)),
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                                textAlign: TextAlign.center,
                                controller: otpTwo,
                                decoration: InputDecoration(
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                    border: InputBorder.none),
                              )),
                          Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.1,
                                      offset: Offset(
                                        -1,
                                        3.8,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xffFFFFFF)),
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                                textAlign: TextAlign.center,
                                controller: otpThree,
                                decoration: InputDecoration(
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                    border: InputBorder.none),
                              )),
                          Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.1,
                                      offset: Offset(
                                        -1,
                                        3.8,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xffFFFFFF)),
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                                textAlign: TextAlign.center,
                                controller: otpFour,
                                decoration: InputDecoration(
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                    border: InputBorder.none),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Resend OTP in 60 Seconds",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 70,
                      bottom: 0,
                    ),
                    child: Image.asset(
                      'assets/overlay.png',
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width / 0.8,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 150,
                    child: SizedBox(
                      height: 35,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff2967B0),
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            )),
                        onPressed: () {
                          if (otpOne.text.isNotEmpty &&
                              otpTwo.text.isNotEmpty &&
                              otpThree.text.isNotEmpty &&
                              otpFour.text.isNotEmpty) {
                            String otp = otpOne.text +
                                otpTwo.text +
                                otpThree.text +
                                otpFour.text;
                            SSPConstants.verifyOTP(
                              otp: otp, action: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
                            }, context: context,
                            );

                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                padding: EdgeInsets.all(5),
                                content: Text(
                                  'Invalid OTP!!',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15, letterSpacing: 0.5),
                                  textAlign: TextAlign.center,
                                ),
                                elevation: 6.0,
                                backgroundColor: Colors.grey,
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                            );
                          }

                          //
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(
                            0xffFFFFFF,
                          ),
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
