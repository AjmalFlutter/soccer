import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

List<String> Img = [
  'assets/profile.png',
  'assets/message.png',
  'assets/call.png',
  'assets/location.png'
];
List<String> datas = ['Name', 'Email', 'Phone', 'Location'];
List<String> names = [
  'Brian Imanuel',
  'brians213@gmail.com',
  '+62 821 560 641',
  'Long beach, California'
];

class _profileState extends State<profile> {
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
              height: 41.h,
            ),
            Center(
                child: Stack(
              children: [
                CircleAvatar(
                  radius: 53.r,
                  backgroundImage: AssetImage(
                    'assets/man.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 78.w, top: 78.h),
                  child: CircleAvatar(
                    radius: 10.r,
                    backgroundColor: Colors.red,
                    child: Image.asset(
                      'assets/edit.png',
                      height: 14.h,
                      width: 14.w,
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 24.h,
            ),
            Center(
              child: Text(
                'Brian Imanuel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Center(
              child: Text(
                '#YNWK till the end 🔥',
                style: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontSize: 14.sp,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            TabBar(
              tabs: [
                Tab(icon: Text('My profile')),
                Tab(icon: Text('Activity')),
                Tab(icon: Text('Settings'))
              ],
              indicator: BoxDecoration(
                  color: Color(0xFFF4A58A),
                  borderRadius: BorderRadius.circular(30)),
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white,
              dividerColor: Colors.transparent,
            ),
            Expanded(
                child: TabBarView(
              children: [
                Container(
                  color: Color(0xff222232),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 300.h,
                        child: ListView.separated(
                          itemBuilder: (BuildContext context, int index) {
                            return Row(children: [
                              SizedBox(
                                width: 28.w,
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xff65656B),
                                radius: 13.r,
                                child: Image.asset(
                                  Img[index],
                                  height: 10.h,
                                  width: 13,
                                ),
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 240.w,
                                    color: Color(0xff222232),
                                    child: Text(datas[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(names[index],
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18.sp,
                                color: Colors.white,
                              )
                            ]);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 20.h,
                            );
                          },
                          itemCount: 4,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff222232),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/play.png",
                              width: 327.w,
                              height: 300.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 271.w,
                          height: 60.h,
                          child: Padding(
                            padding: EdgeInsets.only(left: 28.w),
                            child: Text("Arsenal vs Aston Villa prediction",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 34.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 28.w,
                            ),
                            CircleAvatar(
                                radius: 20.r,
                                backgroundImage: AssetImage(
                                  "assets/man.png",
                                )),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("Brian Imanuel",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text("May 15, 2020 ",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                            SizedBox(
                              width: 60.w,
                            ),
                            Image.asset(
                              "assets/heart.png",
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text("1403",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 15.w,
                            ),
                            Image.asset(
                              "assets/chat.png",
                              width: 20.w,
                              height: 20.h,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text("976",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xff222232),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
