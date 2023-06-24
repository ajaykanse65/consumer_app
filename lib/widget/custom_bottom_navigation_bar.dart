
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zippy_consumer_app/screens/main_screens/cart_screen.dart';
import 'package:zippy_consumer_app/screens/main_screens/dashboard.dart';
import 'package:zippy_consumer_app/screens/main_screens/repair_screen.dart';
import 'package:zippy_consumer_app/screens/main_screens/shield_screen.dart';
import 'package:zippy_consumer_app/utils/custom_icons.dart';

class CustomBottomBar extends StatefulWidget {
  late  int selectedIndex;
   CustomBottomBar({super.key, required this.selectedIndex});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

void  handleIndexChanged({required int index}) {
    setState(() {
      if(index == 0){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>DashBoard()));
      } if(index == 1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> RepairScreen()));
      } if (index == 2){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShieldScreen()));
      } if (index == 3){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
      }else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xffF6EB15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){
                handleIndexChanged(index: 0);
            }, icon: Image.asset(CustomIcons.homeWhite, color: widget.selectedIndex == 0 ? Colors.white : Color(0xff0D1F37),)),
            IconButton(onPressed: (){
              handleIndexChanged(index: 1);
            }, icon: Image.asset(CustomIcons.settingWhite, color: widget.selectedIndex == 1 ? Colors.white : Color(0xff0D1F37),)),
            SizedBox(width: 25),
            IconButton(onPressed: (){
              handleIndexChanged(index: 2);
            }, icon: Image.asset(CustomIcons.shieldWhite, color: widget.selectedIndex == 2 ? Colors.white : Color(0xff0D1F37),)),
            IconButton(onPressed: (){
              handleIndexChanged(index: 3);
            }, icon: Image.asset(CustomIcons.cartWhite, color: widget.selectedIndex == 3 ? Colors.white : Color(0xff0D1F37),)),
          ],
        ),
      );
        // BottomNavigationBar(
        // currentIndex: widget.selectedIndex,
        // onTap: _handleIndexChanged,
        //   items:  <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(backgroundColor: Color(0xffF6EB15),label: '',icon: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Image.asset(CustomIcons.homeWhite, color: widget.selectedIndex == 0 ? Color(0xff0D1F37) : Colors.white,),
        //     )),
        //     BottomNavigationBarItem(backgroundColor: Color(0xffF6EB15),label: '',icon: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Image.asset(CustomIcons.settingWhite, color: widget.selectedIndex == 1 ? Color(0xff0D1F37) : Colors.white,),
        //     )),
        //     BottomNavigationBarItem(backgroundColor: Color(0xffF6EB15),label: '',icon: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Image.asset(CustomIcons.shieldWhite, color: widget.selectedIndex == 2 ? Color(0xff0D1F37) : Colors.white,),
        //     )),
        //     BottomNavigationBarItem(backgroundColor: Color(0xffF6EB15),label: '',icon: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Image.asset(CustomIcons.cartWhite, color: widget.selectedIndex == 3 ? Color(0xff0D1F37) : Colors.white,),
        //     )),
        //   ]);

  }
}
