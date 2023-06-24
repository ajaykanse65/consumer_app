import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zippy_consumer_app/screens/side_drawer.dart';
import 'package:zippy_consumer_app/utils/custom_icons.dart';
import 'package:zippy_consumer_app/widget/custom_bottom_navigation_bar.dart';
import 'package:zippy_consumer_app/widget/repair_screen_widget/repair_gadegt_screen_widget.dart';

class RepairScreen extends StatefulWidget {
  const RepairScreen({super.key});

  @override
  State<RepairScreen> createState() => _RepairScreenState();
}

class _RepairScreenState extends State<RepairScreen> {
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
  int selectedIndex= 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/zippy_repair/background.png'),fit: BoxFit.cover)
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
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                const Center(child: Text("You're just a few clicks away!",style: TextStyle(color: Colors.black, fontSize: 16),)),
                const SizedBox(height: 15,),
                buildRepairProgressbar(context),
                const SizedBox(height: 20,),
                const Center(child: Text("Select Gadget",style: TextStyle(color: Colors.black, fontSize: 24),)),
                const SizedBox(height: 15,),
                buildRepairMobileCard(context,(){}),
                const SizedBox(height: 35,),
                buildRepairLaptopCard(context,(){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
