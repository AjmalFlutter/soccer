import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football/screen2.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

bool isChecked = false;

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181829),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 58, top: 25),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/mbp1.png",
                    width: 225.79200744628906.w,
                    height: 440.0639953613281.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 260.h, left: 25.w),
                  child: Image.asset(
                    "assets/circle1.png",
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 330.h),
                  child: Image.asset(
                    "assets/circle.png",
                    width: 16.w,
                    height: 16.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 77.h),
                  child: Image.asset(
                    "assets/circle.png",
                    width: 16.w,
                    height: 16.h,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text("Dicover all about sport",
                style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
          SizedBox(
            height: 14.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
                "Search millions of jobs and get the\ninside scoop on companies.\nWait for what? Let’s get start it!",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff65656B))),
          ),
          SizedBox(
            height: 45.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return Container(
                              width: 375.w,
                              height: 499.h,
                              decoration: ShapeDecoration(
                                  color: Color(0xFF222232),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(42),
                                      topRight: Radius.circular(42),
                                    ),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Center(
                                      child: Container(
                                          width: 66,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Colors.white)),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Text("Welcome",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 28.sp,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      height: 32.h,
                                    ),
                                    Container(
                                        width: 327.w,
                                        height: 64.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Color(0xff181829)),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 16.h,
                                            ),
                                            Icon(
                                              Icons.email_outlined,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
                                              width: 8.h,
                                            ),
                                            Text("Email",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                ))
                                          ],
                                        )),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    Container(
                                        width: 327.w,
                                        height: 64.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Color(0xff181829)),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 16.h,
                                            ),
                                            Image.asset(
                                              "assets/password.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                            SizedBox(
                                              width: 8.h,
                                            ),
                                            Text("Password",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            SizedBox(
                                              width: 181.w,
                                            ),
                                            Image.asset(
                                              "assets/hide.png",
                                              width: 20.w,
                                              height: 20.h,
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      height: 27.h,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18),
                                          child: Checkbox(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            value: isChecked,
                                            onChanged: (value) {
                                              setState(() {
                                                isChecked = !isChecked;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text("Remember me",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                            )),
                                        SizedBox(
                                          width: 85.w,
                                        ),
                                        Text("Forgot password",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 42.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => page2()));
                                      },
                                      child: Container(
                                        width: 327.w,
                                        height: 63.h,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 73, vertical: 20),
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF246BFD),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Sign in',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.sp,
                                                fontFamily: 'Source Sans Pro',
                                                fontWeight: FontWeight.w600,
                                                height: 0.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    Center(
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Don’t have account? ',
                                              style: TextStyle(
                                                color: Color(0xFFC4C4C4),
                                                fontSize: 14.sp,
                                                fontFamily: 'Source Sans Pro',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Sign UP',
                                              style: TextStyle(
                                                color: Color(0xFF246BFD),
                                                fontSize: 14.sp,
                                                fontFamily: 'Source Sans Pro',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        });
                  },
                  child: Container(
                      width: 199.w,
                      height: 63.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff246BFD)),
                      child: Center(
                        child: Text("Sign in",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 39),
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC4C4C4))),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
