import 'package:flutter/material.dart';
import 'package:zippy_consumer_app/screens/services/login_service.dart';
import 'package:zippy_consumer_app/utils/custom_icons.dart';
import 'package:zippy_consumer_app/utils/gradient_text.dart';
import 'package:zippy_consumer_app/widget/drawer_banner.dart';

Widget sideBar(BuildContext context) {
  return Container(
      decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(22))),
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    'My Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffCACACA),
                        radius: 40.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffCACACA),
                          radius: 35.0,
                          backgroundImage:
                              AssetImage('assets/drawer/profile.png'),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Lenon',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                'Your Plans',
                                style: TextStyle(
                                    color: Color(0xffBCBCBC), fontSize: 14),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Free",
                                style: TextStyle(
                                    color: Color(0xff24FF00),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 40),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       const GradientText(
                //         gradient: LinearGradient(colors: [
                //           Color(0xffF6EB15),
                //           Color(0xffDE562C),
                //         ]),
                //         style: TextStyle(fontSize: 15),
                //         text: 'Upgrage',
                //       ),
                //       // Text('Upgrage',style: TextStyle(fontSize: 14),),
                //       const SizedBox(
                //         width: 10,
                //       ),
                //       Image.asset('assets/drawer/png.png'),
                //       const SizedBox(
                //         width: 10,
                //       ),
                //       const GradientText(
                //         gradient: LinearGradient(colors: [
                //           Color(0xffF6EB15),
                //           Color(0xffDE562C),
                //         ]),
                //         style: TextStyle(fontSize: 15),
                //         text: 'Free delivery',
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 42),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.payment),
                            const SizedBox(width: 12,),
                            const Text('Payments',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.permission),
                            const SizedBox(width: 12,),
                            const Text('Permission',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.service),
                            const SizedBox(width: 12,),
                            const Text('Service History',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.contact),
                            const SizedBox(width: 12,),
                            const Text('Contact Us',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.help),
                            const SizedBox(width: 12,),
                            const Text('Help',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 55),
                buildDrawerBanner(context),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 42,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          SSPConstants.logOut();
                        },
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.logOut),
                            const SizedBox(width: 12,),
                            const Text('Log Out',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.privacy),
                            const SizedBox(width: 12,),
                            const Text('Privacy Policy',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      GestureDetector(
                        child: Row(
                          children: [
                            Image.asset(DrawerIcons.terms),
                            const SizedBox(width: 12,),
                            const Text('Terms & Conditions',style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
}
