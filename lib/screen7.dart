import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class tabbarpage extends StatefulWidget {
  const tabbarpage({super.key});

  @override
  State<tabbarpage> createState() => _tabbarpageState();
}

class _tabbarpageState extends State<tabbarpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff222232),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 52.h,
            ),
            Center(
              child: Text(
                'UEFA Champions League',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 31.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 38.w,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                            radius: 30.r, backgroundColor: Colors.grey),
                        Padding(
                          padding: EdgeInsets.only(left: 1.w, top: 1.h),
                          child: CircleAvatar(
                            radius: 29.r,
                            backgroundColor: Color(0xff2B2B3D),
                            child: Image.asset(
                              "assets/arsenal.png",
                              width: 36.w,
                              height: 60.h,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Arsenal',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 41.w,
                ),
                Column(
                  children: [
                    Text("2 - 3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      '90.15',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 41.w,
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                            radius: 30.r, backgroundColor: Colors.grey),
                        Padding(
                          padding: EdgeInsets.only(left: 1.w, top: 1.h),
                          child: CircleAvatar(
                            radius: 29.r,
                            backgroundColor: Color(0xff2B2B3D),
                            child: Image.asset(
                              "assets/avc.png",
                              width: 36.w,
                              height: 60.h,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Aston Villa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 37.h,
            ),
            SizedBox(
              height: 46.h,
              child: TabBar(
                  indicator: BoxDecoration(
                      color: Color(0xFFF4A58A),
                      borderRadius: BorderRadius.circular(30)),
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.white,dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      icon: Text('Match Detail'),
                    ),
                    Tab(
                      icon: Text('Line Up'),
                    ),
                    Tab(
                      icon: Text('H2H'),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Color(0xff222232),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 67.w,
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Text(
                              'Shooting',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 65.w,
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 62.w,
                            ),
                            Text(
                              '22',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 72.w,
                            ),
                            Text(
                              'Attacks',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 72.w,
                            ),
                            Text(
                              '29',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 62.w,
                            ),
                            Text(
                              '42',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 61.w,
                            ),
                            Text(
                              'Posession',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 61.w,
                            ),
                            Text(
                              '58',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 62.w,
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 76.w,
                            ),
                            Container(
                              width: 11,
                              height: 16,
                              color: Colors.yellow,
                            ),
                            Text(
                              ' Cards',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 75.w,
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 62.w,
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 75.w,
                            ),
                            Text(
                              ' Corners',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 75.w,
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 20.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.w),
                          child: Row(
                            children: [
                              Text(
                                'Other Match',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 167.w,
                              ),
                              Text(
                                'See all',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 12.sp,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
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
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 40.w, top: 8.h),
                                          child: CircleAvatar(
                                            radius: 22.r,
                                            backgroundColor: Color(0xff222232),
                                            child: Image.asset(
                                              "assets/cfc.png",
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 2.w, top: 8.h),
                                          child: CircleAvatar(
                                            radius: 22.r,
                                            backgroundColor: Color(0xFF2A2A3C),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.h),
                                          child: CircleAvatar(
                                            radius: 22.r,
                                            backgroundColor: Color(0xff222232),
                                            child: Image.asset(
                                              "assets/mufc.png",
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        Text("Man United  vs Chelsea FC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Row(
                                          children: [
                                            Text("2",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            SizedBox(
                                              width: 37.w,
                                            ),
                                            Text("-",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            SizedBox(
                                              width: 32.w,
                                            ),
                                            Text("3",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
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
                                      ),
                                      child: Center(
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
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                            child: Container(
                              width: 319.w,
                              height: 68.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff2B2B3D)),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 40.w, top: 8.h),
                                          child: CircleAvatar(
                                            radius: 22.r,
                                            backgroundColor: Color(0xff222232),
                                            child: Image.asset(
                                              "assets/tfc.png",
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(left: 2.w, top: 8.h),
                                          child: CircleAvatar(
                                            radius: 22.r,
                                            backgroundColor: Color(0xFF2A2A3C),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8.h),
                                          child: CircleAvatar(
                                            radius: 22.r,
                                            backgroundColor: Color(0xff222232),
                                            child: Image.asset(
                                              "assets/sfc.png",
                                              width: 24.w,
                                              height: 24.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        Text("Tortenham  vs Southamton",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Row(
                                          children: [
                                            Text("1",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            SizedBox(
                                              width: 37.w,
                                            ),
                                            Text("-",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            SizedBox(
                                              width: 32.w,
                                            ),
                                            Text("0",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
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
                                      ),
                                      child: Center(
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
                            ))
                      ],
                    ),
                  ),
                  DefaultTabController(
                    length: 2,
                    child: Container(
                      color: Color(0xff222232),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 24.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 108.w),
                            child: Row(
                              children: [
                                Text(
                                  'Formation',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 14.h,
                                ),
                                Text(
                                  '(4-2-3-1)',
                                  style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 14,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          SizedBox(height: 46.h,width:200.w ,
                            child: TabBar(dividerColor: Colors.transparent,
                              tabs: [
                                Tab(
                                  icon: Text('Arsenal'),
                                ),
                                Tab(
                                  icon: Text('Aston Villa'),
                                )
                              ],
                              indicator: BoxDecoration(
                                  color: Color(0xFFF4A58A),
                                  borderRadius: BorderRadius.circular(30)),
                              labelColor: Colors.white,
                              indicatorSize: TabBarIndicatorSize.tab,
                              unselectedLabelColor: Colors.white,
                            ),
                          ),
                          Expanded(
                              child: TabBarView(
                                  children: [Container(
                                    color: Color(0xff222232),
                                    child: Column(
                                      children: [SizedBox(height: 20.h,),
                                  SizedBox(width: 320.w,
                                    height: 389.h,
                                    child: Image.asset('assets/squad.png',fit: BoxFit.cover,
                                         ),
                                  )],),
                                  ),
                                    Container(
                                      color: Color(0xff222232),
                                    )
                                  ])
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xff222232),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
