
import 'package:flutter/material.dart';
import 'package:zippy_consumer_app/screens/side_drawer.dart';
import 'package:zippy_consumer_app/utils/custom_icons.dart';
import 'package:zippy_consumer_app/widget/custom_bottom_navigation_bar.dart';

import '../../widget/shiedl_screen_widget/shield_gadegt_screen_widget.dart';

class ShieldScreen extends StatefulWidget {
  const ShieldScreen({super.key});

  @override
  State<ShieldScreen> createState() => _ShieldScreenState();
}

class _ShieldScreenState extends State<ShieldScreen> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/zippy_shield/shieldbg.png'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        drawer: sideBar(context),
        backgroundColor: Colors.transparent,
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
          child: SizedBox(height:60,child: CustomBottomBar(selectedIndex: selectedIndex,)),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Center(child: Text("You're just a few clicks away!",style: TextStyle(color: Colors.black, fontSize: 16),)),
                SizedBox(height: 15,),
                buildShieldProgressbar(context),
                SizedBox(height: 20,),
                Center(child: Text("Select Gadget",style: TextStyle(color: Colors.black, fontSize: 24),)),
                SizedBox(height: 15,),
                buildShieldMobileCard(context,(){}),
                SizedBox(height: 35,),
                buildShieldLaptopCard(context,(){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
