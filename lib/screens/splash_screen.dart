
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zippy_consumer_app/screens/auth_screens/login_screen.dart';
import 'package:zippy_consumer_app/screens/main_screens/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences preferences;
  @override
  void initState() {
    test();
    super.initState();
  }
  Future<void> test() async{
    preferences = await SharedPreferences.getInstance();
    var userId = preferences.getString('userId');
    if (userId == null || userId == ' '){
      Timer(const Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen())
          )
      );
    }else{
      Timer(const Duration(seconds: 3),
              ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard())
          )
      );
    }
  }

  // Future<void> push() async{
  //   preferences = await SharedPreferences.getInstance();
  //   var UserID = preferences.getString('userId');
  //   print(UserID);
  //   if (UserID == null || UserID == '') {
  //     // print('In If');
  //     Timer(const Duration(seconds: 3),
  //             ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen())
  //         )
  //     );
  //   }else{
  //     // print('In Else');
  //     Timer(const Duration(seconds: 3),
  //             ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard())
  //         )
  //     );
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: Image.asset('assets/splash_screen.png',fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
    );
  }
}
