import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
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
List<String> name2 = [
  'Soccer',
  'Basket',
  'football',
  'Baseball',
  'Tennis',
  'Volley'
];
List<String> img2 = [
  'assets/soccer.png',
  'assets/basketball.png',
  'assets/baseball.png',
  'assets/whiteball.png',
  'assets/tennis.png',
  'assets/volly.png'
];
List<String> img3 = [
  'assets/soccer1.png',
  'assets/soccer2.png',
  'assets/soccer3.png',
  'assets/soccer4.png',
];
List<String> news = [
  'Roumor Has It: Lampard’s position under threat, ...',
  'Artrta sees ‘natural leader’ Tierney as a future, ...',
  'Athletic Bilbao to appoint Marcelino as coach until, ...',
  'Barcelona suffer too much late in games, says Ter Stegen'
];
List<String> date = [
  '04 JAN 2021, 14:16',
  '04 JAN 2021, 05:30',
  '04 JAN 2021, 09:23',
  '04 JAN 2021, 06:06'
];

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff222232),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 52.h,
          ),
          Center(
            child: Container(
              width: 319.w,
              height: 54.h,
              decoration: ShapeDecoration(
                color: Color(0xFF5656B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Image.asset('assets/searchgrey.png',
                      height: 15.h, width: 15.w),
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 207.w,
                    height: 17.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Search for news, team, match, etc...',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            height: 30.h,
            child: ListView.separated(
              padding: EdgeInsets.only(left: 28.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: selectedIndex == index
                      ? Container(
                          width: 98,
                          height: 46,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 2.w,
                              ),
                              Image.asset(
                                img[index],
                                width: 24.w,
                                height: 24.h,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(name2[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ],
                          ),
                        )
                      : CircleAvatar(
                          radius: 26.r,
                          backgroundColor: Colors.grey,
                          child: Image.asset(
                            img2[index],
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                );
              },
              itemCount: 6,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 20.w,
                );
              },
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 400.h,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Image.asset(
                            img3[index],
                            height: 66.h,
                            width: 99.w,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 181.w,
                                height: 42.h,
                                child: Text(
                                  news[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                date[index],
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 12,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                  height: 0.12,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Image.asset(
                            'assets/save.png',
                            height: 24.h,
                            width: 24.w,
                          )
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: 4,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),

              ],
            ),
          ),SizedBox(
            height: 32,
          ), Padding(
            padding: EdgeInsets.only(left: 28.w),
            child: Text(
              'Trending News',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.sp,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 28.w),
            child: Row(
              children: [
                Image.asset(
                  'assets/play.png',
                  width: 249.w,
                  height: 169.h,
                ),SizedBox(width: 20.w,),
                Image.asset(
                  'assets/play2.jpeg',
                  width: 249.w,
                  height: 169.h,
                )
              ],
            ),
          ),
        ]));
  }
}
