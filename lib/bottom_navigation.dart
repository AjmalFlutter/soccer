import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football/screen1.dart';
import 'package:football/screen3.dart';
import 'package:football/screen4.dart';
import 'package:football/screen5.dart';
import 'package:football/screen6.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

int currentIndex = 0;
final screens = [page3(), explore(), standing(), profile()];

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Color(0xff222232),
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.yellow))),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: currentIndex == 0
                    ? Column(
                        children: [
                          Text(
                            'home',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          CircleAvatar(
                            radius: 2.r,
                            backgroundColor: Colors.blue,
                          )
                        ],
                      )
                    : Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: currentIndex == 1
                    ? Column(
                        children: [
                          Text(
                            'explore',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          CircleAvatar(
                            radius: 2.r,
                            backgroundColor: Colors.blue,
                          )
                        ],
                      )
                    : Icon(
                        Icons.explore_outlined,
                        color: Colors.grey,
                      ),
                label: 'explore'),
            BottomNavigationBarItem(
                icon: currentIndex==2?Column(
                  children: [
                    Text(
                      'standing',
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    CircleAvatar(
                      radius: 2.r,
                      backgroundColor: Colors.blue,
                    )
                  ],
                ):Icon(
                  Icons.insert_chart_outlined,
                  color: Colors.grey,
                ),
                label: 'standing'),
            BottomNavigationBarItem(
                icon:currentIndex==3? Column(
                  children: [
                    Text(
                      'profile',
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    CircleAvatar(
                      radius: 2.r,
                      backgroundColor: Colors.blue,
                    )
                  ],
                ):Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: 'profile'),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
