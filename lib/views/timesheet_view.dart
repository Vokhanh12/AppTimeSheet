import 'package:flutter/material.dart';
import 'package:timesheet/views/keyanimation/buttonBar.dart';
import 'package:timesheet/views/keyanimation/buttonEye.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timesheet/views/login_view.dart';

class TimeSheetView extends StatelessWidget {
  const TimeSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF0D7BD4),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Text(
                      'TIMESHEET',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images2.thanhnien.vn/528068263637045248/2023/3/28/john-wick-1679999395599601703767.jpg")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: Color(0xFF0D7BD4),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(children: [
              CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage(
                    "https://images2.thanhnien.vn/528068263637045248/2023/3/28/john-wick-1679999395599601703767.jpg"),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'John Wick',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'khanhyou2018@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFBEE0EC),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(12),
        child: Wrap(
          runSpacing: 10.0,
          children: [
            ListTile(
              leading: Icon(
                FontAwesomeIcons.clock,
                color: Color(0xFF4D4D4D),
              ),
              title: const Text(
                'Chấm công',
                style: TextStyle(
                  color: Color(0xFF4D4D4D),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TimeSheetView()));
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.book,
                color: Color(0xFF4D4D4D),
              ),
              title: const Text(
                'Lịch sử chấm công',
                style: TextStyle(
                  color: Color(0xFF4D4D4D),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginView()));
              },
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.lock,
                color: Color(0xFF4D4D4D),
              ),
              title: const Text(
                'Tài khoản',
                style: TextStyle(
                  color: Color(0xFF4D4D4D),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {},
            ),
            const Divider(color: Color(0xFF4D4D4D)),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.fileExport,
                color: Color(0xFF4D4D4D),
              ),
              title: const Text(
                'Export',
                style: TextStyle(
                  color: Color(0xFF4D4D4D),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                FontAwesomeIcons.doorOpen,
                color: Color(0xFF4D4D4D),
              ),
              title: const Text(
                'Log out',
                style: TextStyle(
                  color: Color(0xFF4D4D4D),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      );
}
