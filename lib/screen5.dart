import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class standing extends StatefulWidget {
  const standing({super.key});

  @override
  State<standing> createState() => _standingState();
}

List<String> teams = [
  'Atlético Madrid',
  'Real Madrid',
  'Barcelona',
  'Villareal'
];
List<String> teamlogo1 = [
  'assets/atc.png',
  'assets/fcb.png',
  'assets/rma.png',
  'assets/vlr.png',
];
List<String> D = ['2', '4', '4', '8'];
List<String> L = ['1', '3', '4', '2'];
List<String> Ga = ['6', '7', '9', '10'];
List<String> Gd = ['23', '15', '20', '16'];
List<String> Pts = ['38', '37', '34', '32'];
List<String> teams1 = [
  'Liverpool',
  'Manchester United',
  'Leister City',
  'Villareal'
];
List<String> teamlogo = [
  'assets/lfc.png',
  'assets/muc.png',
  'assets/lcc.png',
  'assets/vlr.png',
];
List<String> D1 = ['2', '3', '2' ];
List<String> L1= ['2', '3', '5'];
List<String> Ga1 = ['21', '24', '21', ];
List<String> Gd1 = ['16', '9', '10', ];
List<String> Pts1 = ['33', '33', '32', ];

class _standingState extends State<standing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff181829),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                          labelText: 'Search your competition ...',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 28.w,
                  ),
                  Container(
                    width: 98.w,
                    height: 46.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/soccer.png',
                          height: 15.h,
                          width: 15.w,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Soccer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Colors.grey,
                    child: Image.asset(
                      'assets/basketball.png',
                      height: 15.h,
                      width: 15.w,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Colors.grey,
                    child: Image.asset(
                      'assets/baseball.png',
                      height: 15.h,
                      width: 15.w,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Colors.grey,
                    child: Image.asset(
                      'assets/whiteball.png',
                      height: 15.h,
                      width: 15.w,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Colors.grey,
                    child: Image.asset(
                      'assets/tennis.png',
                      height: 15.h,
                      width: 15.w,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Colors.grey,
                    child: Image.asset(
                      'assets/volly.png',
                      height: 15.h,
                      width: 15.w,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
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
                  width: 218.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 24.sp,
                )
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            Center(
                child: Container(
              width: 318.w,
              height: 215.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xff222232)),
              child: Column(children: [
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 18.w,
                    ),
                    Text("Team",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 115.w,
                    ),
                    Text("D",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text("L",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text("Ga",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text("Gd",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text("Pts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 161.w
                  ),
                  child: SizedBox(
                      width: 156.w,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xff181829),
                      )),
                ),SizedBox(height: 15.h,),
                Container(
                  height: 150.h,
                  child: ListView.separated(
                    padding: EdgeInsets.only(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(children: [
                            SizedBox(
                              width: 18.w,
                            ),
                            Image.asset(
                              teamlogo[index],
                              height: 16.h,
                              width: 16.w,
                            ),
                            SizedBox(
                              width: 9.w,
                            ),
                            SizedBox(
                              width: 100.w,
                              child: Text(teams[index],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(D[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 21.w,
                            ),
                            Text(L[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 20.w,
                            ),
                            SizedBox(
                              width: 15.w,
                              child: Center(
                                child: Text(Ga[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 23.w,
                            ),
                            SizedBox(
                              width: 15.w,
                              child: Text(Gd[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(Pts[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ))
                          ]),   Padding(
                            padding: EdgeInsets.only(left: 161.w
                            ),
                            child: SizedBox(
                                width: 156.w,
                                child: Divider(
                                  thickness: 2,
                                  color: Color(0xff181829),
                                )),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 8.h,
                      );
                    },
                    itemCount: 4,
                  ),
                ),
              ]),
            )),SizedBox(height: 20.h,),     Row(
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
                    Container(
                      child: Text("Premier League",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    Text("England",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
                SizedBox(
                  width: 150.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 24.sp,
                )
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            Center(
                child: Container(
                  width: 318.w,
                  height: 215.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xff222232)),
                  child: Column(children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18.w,
                        ),
                        Text("Team",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          width: 115.w,
                        ),
                        Text("D",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text("L",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text("Ga",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text("Gd",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text("Pts",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 161.w
                      ),
                      child: SizedBox(
                          width: 156.w,
                          child: Divider(
                            thickness: 2,
                            color: Color(0xff181829),
                          )),
                    ),SizedBox(height: 15.h,),
                    Container(
                      height: 150.h,
                      child: ListView.separated(
                        padding: EdgeInsets.only(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Row(children: [
                                SizedBox(
                                  width: 18.w,
                                ),
                                Image.asset(
                                  teamlogo[index],
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                SizedBox(
                                  width: 9.w,
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: Text(teams1[index],
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(D1[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 21.w,
                                ),
                                Text(L1[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SizedBox(
                                  width: 15.w,
                                  child: Center(
                                    child: Text(Ga1[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 23.w,
                                ),
                                SizedBox(
                                  width: 15.w,
                                  child: Text(Gd1[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(Pts1[index],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ]),   Padding(
                                padding: EdgeInsets.only(left: 161.w
                                ),
                                child: SizedBox(
                                    width: 156.w,
                                    child: Divider(
                                      thickness: 2,
                                      color: Color(0xff181829),
                                    )),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 8.h,
                          );
                        },
                        itemCount: 3,
                      ),
                    ),
                  ]),
                ))
          ]),
        ));
  }
}
