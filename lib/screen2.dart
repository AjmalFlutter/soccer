import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football/screen3.dart';

import 'bottom_navigation.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181829),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: SizedBox(
              width: 267.w,
              height: 100.h,
              child: Text(
                'What sport do you interest?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.sp,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text("You can choose more than one",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          SizedBox(
            height: 59.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Color(0xff222232),
                    child: Center(
                      child: Image.asset(
                        "assets/soccer.png",
                        width: 44.w,
                        height: 44.h,
                      ),
                    ),
                  ),SizedBox(height: 2.h,),Text(
                      "Soccer",
                      style: TextStyle(color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      )
                  )
                ],
              ),SizedBox(width: 20.w,), Column(
                children: [
                  CircleAvatar(
                    radius:  40.r,
                    backgroundColor: Color(0xff222232),
                    child: Center(
                      child: Image.asset(
                        "assets/basketball.png",
                        width: 44.w,
                        height: 44.h,
                      ),
                    ),
                  ),SizedBox(height: 2.h,),Text(
                      "Basketball",
                      style: TextStyle(color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      )
                  )
                ],
              ),SizedBox(width: 20.w,), Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Color(0xff222232),
                    child: Center(
                      child: Image.asset(
                        "assets/baseball.png",
                        width: 44.w,
                        height: 44.h,
                      ),
                    ),
                  ),SizedBox(height: 2.h,),Text(
                      "Football",
                      style: TextStyle(color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                ],
              )
            ],
          ),SizedBox(height: 30.h,),   Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Color(0xff222232),
                    child: Center(
                      child: Image.asset(
                        "assets/whiteball.png",
                        width: 44.w,
                        height: 44.h,
                      ),
                    ),
                  ),SizedBox(height: 2.h,),Text(
                      "Baseball",
                      style: TextStyle(color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      )
                  )
                ],
              ),SizedBox(width: 20.w,), Column(
                children: [
                  CircleAvatar(
                    radius:  40.r,
                    backgroundColor: Color(0xff222232),
                    child: Center(
                      child: Image.asset(
                        "assets/tennis.png",
                        width: 44.w,
                        height: 44.h,
                      ),
                    ),
                  ),SizedBox(height: 2.h,),Text(
                      "Tennis",
                      style: TextStyle(color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      )
                  )
                ],
              ),SizedBox(width: 20.w,), Column(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Color(0xff222232),
                    child: Center(
                      child: Image.asset(
                        "assets/volly.png",
                        width: 44.w,
                        height: 44.h,
                      ),
                    ),
                  ),SizedBox(height: 2.h,),Text(
                      "Vollyball",
                      style: TextStyle(color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                ],
              )
            ],
          ),SizedBox(height: 94.h,),Center(
            child: GestureDetector(onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) => BottomNavigation()));
            },
              child: Container(
                width: 327.w,
                height: 63.h,
                padding: const EdgeInsets.symmetric(horizontal: 73, vertical: 20),
                decoration: ShapeDecoration(
                  color: Color(0xFF246BFD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),SizedBox(height: 26.h,),Center(
            child: Text(
              'Skip',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w400,

              ),
            ),
          )
        ],
      ),
    );
  }
}
