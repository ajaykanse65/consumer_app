
import 'package:flutter/material.dart';

Widget buildBottomWidget(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.6,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(42),topRight: Radius.circular(42)),
        color: Colors.white
    ),
    child: Column(
      children: [
        // InkWell(
        //   onTap: (){},
        //   child: Stack(
        //     alignment: Alignment.bottomCenter,
        //     children: <Widget>[
        //       // Those are our background
        //       Container(
        //         height: 136,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(22),
        //           color: Colors.amber
        //         ),
        //         child: Container(
        //           margin: EdgeInsets.only(right: 10),
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(22),
        //           ),
        //         ),
        //       ),
        //       // our product image
        //       Positioned(
        //         top: 0,
        //         right: 0,
        //         child: Hero(
        //           tag: '{product.id}',
        //           child: Container(
        //             padding: EdgeInsets.symmetric(horizontal: 20.0),
        //             height: 160,
        //             // image is square but we add extra 20 + 20 padding thats why width is 200
        //             width: 200,
        //             child: Image.asset(
        //               'assets/zippy_logo.png',
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         ),
        //       ),
        //       // Product title and price
        //       Positioned(
        //         bottom: 0,
        //         left: 0,
        //         child: SizedBox(
        //           height: 136,
        //           // our image take 200 width, thats why we set out total width - 200
        //           width: MediaQuery.of(context).size.width - 200,
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: <Widget>[
        //               Spacer(),
        //               Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: 20.0),
        //                 child: Text(
        //                   'product.title',
        //                   style: Theme.of(context).textTheme.button,
        //                 ),
        //               ),
        //               // it use the available space
        //               Spacer(),
        //               Container(
        //                 padding: EdgeInsets.symmetric(
        //                   horizontal: 20.0 * 1.5, // 30 padding
        //                   vertical: 20.0 / 4, // 5 top and bottom
        //                 ),
        //                 decoration: BoxDecoration(
        //                   color: Color(0xFFFFA41B),
        //                   borderRadius: BorderRadius.only(
        //                     bottomLeft: Radius.circular(22),
        //                     topRight: Radius.circular(22),
        //                   ),
        //                 ),
        //                 child: Text(
        //                   "{product.price}",
        //                   style: Theme.of(context).textTheme.button,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),



        // SizedBox(
        //   width: 160,
        //   height: 125,
        //   child:      LayoutBuilder(builder: (context, constraint) {
        //     return Stack(
        //       clipBehavior: Clip.none,
        //       children: [
        //         Positioned(
        //             top: -(constraint.maxHeight * 0.6), // relative to parent's height
        //             right: -(constraint.maxHeight / 1.0),
        //             child:
        //             Container(
        //               width: 180,
        //               height: 150,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(15),
        //                   color: Color(0xffF6EB15)
        //               ),
        //               child:
        //               Column(),)),
        //         Positioned(
        //             top: -(constraint.maxHeight * 0.6), // relative to parent's height
        //             right: (constraint.maxHeight / 1.5),
        //             child: Container(
        //               width: 180,
        //               height: 150,
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(15),
        //                   color: Color(0xffDE562C)
        //               ),
        //               child:
        //               Column(),)),
        //       ],
        //     );
        //   }),
        // ),
        Text('Offers')
      ],
    ),
  );
}


