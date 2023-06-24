import 'package:flutter/material.dart';

Widget buildRepairProgressbar(BuildContext context) {
  return SizedBox(
    height: 5,
    width: 264,
    child: LayoutBuilder(builder: (context, constraint) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: -(constraint.maxHeight / 4), // relative to parent's height
              right: -(constraint.maxHeight / 4),
              child: Image.asset('assets/zippy_repair/progressbar.png')),
          Positioned(
              top: -(constraint.maxHeight / 0.5), // relative to parent's height
              right: (constraint.maxHeight * 32),
              child: Image.asset('assets/zippy_repair/van.png')),
        ],
      );
    }),
  );
}
Widget buildRepairLaptopCard(BuildContext context, GestureTapCallback ontap){
  return GestureDetector(
    onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFEFEFE),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 8.0,
                spreadRadius: 0.3,
                offset: const Offset(
                  -1,
                  9,
                ),
              )
            ]
        ),
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          width: 256,
          height: 215,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32,),
              Image.asset('assets/zippy_repair/laptop.png'),
              const SizedBox(height: 15,),
              const Text('Laptop',style: TextStyle(color: Colors.black,fontSize: 22),)
            ],
          ),
        ),)
  );
}

Widget buildRepairMobileCard(BuildContext context,GestureTapCallback ontap){
  return GestureDetector(
    onTap: ontap,
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xffFEFEFE),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 8.0,
            spreadRadius: 0.3,
            offset: const Offset(
              -1,
              9,
            ),
          )
        ]
      ),
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 256,
        height: 215,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32,),
            Image.asset('assets/zippy_repair/mobile.png'),
            const SizedBox(height: 15,),
            const Text('Smartphone',style: TextStyle(color: Colors.black,fontSize: 22),)
          ],
        ),
      ),)
    );
}
