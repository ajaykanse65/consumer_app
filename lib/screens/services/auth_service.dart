import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zippy_consumer_app/models/otpModel.dart';
import 'package:zippy_consumer_app/screens/connectivity/constant_api.dart';

class authService{
  static Future userOTP({required String mobileNo}) async{
    final response = await http.post(Uri.parse(constantAPI.URL_LOGIN),
      body: ({
        "mobile_no" : mobileNo
      }));
    if(response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      OtpModel otpModel = OtpModel.fromJson(json);
      return otpModel;
    }
  }
}