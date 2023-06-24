
import 'package:flutter/material.dart';

Widget buildTopWidget(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 26,top: 26),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){},
              child: Image.asset('assets/dashboard/location.png'),
            ),
            const Text('Goregaon, Mumbai',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
            const Icon(Icons.arrow_drop_down_rounded,color: Color(0xff0D1F37),size: 35,),
            const SizedBox(width: 58,),
            Image.asset('assets/dashboard/zippyLogo1.png')

          ],
        ),
      ),
      const SizedBox(height: 24,),
      const Padding(
        padding: EdgeInsets.only(left: 26),
        child: Text('Hello, John!',style: TextStyle(color: Color(0xff0D1F37),fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      const SizedBox(height: 20,),
      const Padding(
        padding: EdgeInsets.only(left: 24),
        child: Text('Our Services',style: TextStyle(color: Color(0xff0D1F37),fontSize: 22,fontWeight: FontWeight.normal),),
      ),
      SizedBox(height: 58,),

    ],
  );
}