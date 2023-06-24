

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zippy_consumer_app/screens/side_drawer.dart';
import 'package:zippy_consumer_app/utils/custom_icons.dart';
import 'package:zippy_consumer_app/widget/custom_bottom_navigation_bar.dart';
import 'package:zippy_consumer_app/widget/dashboard_screen_widget/botton_widget.dart';
import 'package:zippy_consumer_app/widget/dashboard_screen_widget/top_widget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late SharedPreferences preferences;
  @override
  void initState(){
    test();
    super.initState();
  }
  Future<void> test() async{
    preferences = await SharedPreferences.getInstance();
    var userId = preferences.getString('userId');
    print(userId);
  }
  int _selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight * 0.65;
    return Container(
         decoration: const BoxDecoration(
             gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: [
                   Color(0xff59A4FF),
                   Color(0xff0D1F37),
                   Colors.white
                 ])),
         child: Scaffold(
             drawer: sideBar(context),
             floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 35,bottom: 0),
          child: Builder(
            builder: (context) {
              return FloatingActionButton.large(
                backgroundColor: Colors.transparent,
                elevation: 0,
                onPressed:() => Scaffold.of(context).openDrawer(),
                child: Image.asset(CustomIcons.profile,),
              );
            }
          ),
      ),
           bottomNavigationBar: Padding(
             padding: const EdgeInsets.only(bottom: 40),
             child: SizedBox(height:60,child: CustomBottomBar(selectedIndex: _selectedIndex,)),
           ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  buildTopWidget(context),
                  SizedBox(height: 30,),


                  // Expanded(child:
                  // buildBottomWidget(context),
                  // ),
                ],
              ),
            ),

      ),
       );
  }
}
