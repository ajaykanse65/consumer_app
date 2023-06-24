import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SSPConstants{
  static final String URL_COMMON = "https://zippyrepair.in/partner/portal/webservice_test/";
  static final String URL_LOGIN = URL_COMMON + "customer/check_mobile.php";
  static final String URL_OTP_VAIDATE = URL_COMMON + "customer/validate_otp.php";


  static Future userLogin({ required String mobileNo }) async{
    final response = await http.post(Uri.parse(URL_LOGIN),
    body: ({
      "mobile_no": "9167700165"
    }));
    var resData = jsonDecode(response.body);
    if(resData['status'] == 1){
      var resData = jsonDecode(response.body);
      SharedPreferences.setMockInitialValues({});
      SharedPreferences preference = await SharedPreferences.getInstance();
      preference.setString('userId', resData['data']['user_id'] as String);
      print(response.body);
    }else{
      print('error');
    }
  }
  static Future verifyOTP({required String otp, required VoidCallback action, required BuildContext context}) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var userId = preferences.getString('userId');
    final response = await http.post(Uri.parse(URL_OTP_VAIDATE),
    body: ({
      "otp" : otp,
      "user_id" : userId
    }));
    print(response.body);
    var resData = jsonDecode(response.body);
    // if(response.statusCode == 200)
      if(resData['status'] == 1){
        action();
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
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
            )
        );
      }
  }
  static Future<void> logOut() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('userId', ' ');
  }
}

