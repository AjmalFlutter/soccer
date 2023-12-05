import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football/screen7.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

int selectedIndex = 0;
List<String> name = [
  'Soccer',
  'Basketball',
  'football',
  'Baseball',
  'Tennis',
  'Volleyball'
];
List<String> img = [
  'assets/soccer.png',
  'assets/basketball.png',
  'assets/baseball.png',
  'assets/whiteball.png',
  'assets/tennis.png',
  'assets/volly.png'
];

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181829),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 52.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Row(
              children: [
                Text(
                  'LiveScore',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 149.w,
                ),
                Image.asset(
                  "assets/search.png",
                  height: 20.h,
                  width: 20.w,
                ),
                SizedBox(
                  width: 24.w,
                ),
                Image.asset(
                  "assets/notification.png",
                  height: 20.h,
                  width: 20.w,
                )
              ],
            ),
          ),
          SizedBox(
            height: 9.h,
          ),
          Center(
            child: Image.asset(
              "assets/banner.png",
              width: 319.w,
              height: 161.h,
            ),
          ),
          SizedBox(
            height: 32.h,
          ),

            SizedBox(
              height: 115.h,
              child: ListView.separated(padding: EdgeInsets.only(left: 20.w)
              ,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: GestureDetector(onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => tabbarpage()));
                    },
                      child: Container(
                        width: 108,
                        height: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: selectedIndex == index
                              ? Colors.red
                              : Color(0xff222232),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Image.asset(
                              img[index],
                              width: 24.w,
                              height: 24.h,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(name[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 14.w,
                  );
                },
                itemCount: 6,
              ),
            ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 29.w,
              ),
              Image.asset(
                "assets/spain.png",
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("La Liga",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )),
                  Text("spain",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
              SizedBox(
                width: 220.w,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 24.sp,
              )
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          Center(
              child: Container(
            width: 319.w,
            height: 68.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff2B2B3D)),
            child: SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 16.w,
                  ),
                 Stack(
                    children: [
  Padding(
                        padding: EdgeInsets.only(left: 40.w,top: 8.h),
                        child: CircleAvatar(
                          radius: 22.r,
                          backgroundColor: Color(0xff222232),
                          child: Image.asset(
                            "assets/rma.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ),   Padding(
                        padding:  EdgeInsets.only(left: 2.w,top: 8.h),
                        child: CircleAvatar(
                          radius: 22.r,
                          backgroundColor:Color(0xFF2A2A3C),

                        ),
                      ),Padding(
                        padding:  EdgeInsets.only(top: 8.h),
                        child: CircleAvatar(
                          radius: 22.r,
                          backgroundColor: Color(0xff222232),
                          child: Image.asset(
                            "assets/fcb.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ),
                    ],
                  ),SizedBox(width: 14.w,),Column(
                    children: [SizedBox(height: 16.h,),
                      Text(
                          "Barcelona  vs Real Madrid",
                          style: TextStyle(color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          )
                      ),Row(
                        children: [
                          Text(
                              "2",
                              style: TextStyle(color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              )
                          ),SizedBox(width: 37.w,),Text(
                              "-",
                              style: TextStyle(color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              )
                          ),SizedBox(width: 32.w,),Text(
                              "0",
                              style: TextStyle(color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                        ],
                      )
                    ],
                  ),SizedBox(width: 10.w,),Container(
                    width: 47.w,
                    height: 68.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF222232),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                    ),child: Center(
                      child: Text(
                      'HT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                  ),
                    ),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 29.w,
              ),
              Image.asset(
                "assets/england.png",
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Premier League",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )),
                  Text("England",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
              SizedBox(
                width: 158.w,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 24.sp,
              )
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          Center(
              child: Container(
                width: 319.w,
                height: 68.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2B2B3D)),
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 40.w,top: 8.h),
                            child: CircleAvatar(
                              radius: 22.r,
                              backgroundColor: Color(0xff222232),
                              child: Image.asset(
                                "assets/lfc.png",
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ),   Padding(
                            padding:  EdgeInsets.only(left: 2.w,top: 8.h),
                            child: CircleAvatar(
                              radius: 22.r,
                              backgroundColor:Color(0xFF2A2A3C),

                            ),
                          ),Padding(
                            padding:  EdgeInsets.only(top: 8.h),
                            child: CircleAvatar(
                              radius: 22.r,
                              backgroundColor: Color(0xff222232),
                              child: Image.asset(
                                "assets/avc.png",
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ),
                        ],
                      ),SizedBox(width: 14.w,),Column(
                        children: [SizedBox(height: 16.h,),
                          Text(
                              "Aston Villa  vs Liverpool",
                              style: TextStyle(color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              )
                          ),Row(
                            children: [
                              Text(
                                  "2",
                                  style: TextStyle(color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  )
                              ),SizedBox(width: 37.w,),Text(
                                  "-",
                                  style: TextStyle(color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                              ),SizedBox(width: 32.w,),Text(
                                  "3",
                                  style: TextStyle(color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  )
                              ),
                            ],
                          )
                        ],
                      ),SizedBox(width: 10.w,),Container(
                        width: 47.w,
                        height: 68.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF222232),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                        ),child: Center(
                        child: Text(
                          'FT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
