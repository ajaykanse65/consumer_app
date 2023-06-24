import 'package:flutter/material.dart';

Widget buildDrawerBanner(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(colors: [
        Color(0xff2967B0),
        Color(0xff59A4FF)
      ])
    ),
    height: 60,
    width: double.infinity,
    child: LayoutBuilder(builder: (context, constraint) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: (constraint.maxHeight / 25), // relative to parent's height
              right: -(constraint.maxHeight / 50),
              left: (constraint.minWidth / 9),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tech Tuesdays',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text('Get 20% off',style: TextStyle(fontSize: 14,color: Colors.white,),)

                ],
              )),
          Positioned(
              top: -(constraint.maxHeight * 0.3), // relative to parent's height
              right: (constraint.maxHeight  * 0.5),
              child: Image.asset('assets/drawer/banner.png',scale: 0.9,)),
        ],
      );
    }),
  );
}