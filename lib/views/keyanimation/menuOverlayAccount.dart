import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuOverlayAccount extends StatelessWidget {
  const MenuOverlayAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final double SCREEN_WIDTH = MediaQuery.of(context).size.width;
    final double SCREEN_HEIGHT = MediaQuery.of(context).size.height;

    return Container(
      width: SCREEN_WIDTH,
      height: SCREEN_HEIGHT,
      color: Colors.white,
      child: Column(children: [
        Container(width: SCREEN_WIDTH, child: buildHeader(context)),
        Expanded(child: BuildMenuItems(context))
      ]),
    );
  }
}

Widget buildHeader(BuildContext context) => Material(
      color: Color(0xFF0D7BD4),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
          child: Column(children: [
            CircleAvatar(
              radius: 60,
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
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'khanhyou2018@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBEE0EC),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
        ),
      ),
    );

Widget BuildMenuItems(BuildContext context) => Container(
      color: const Color.fromARGB(255, 173, 17, 17),
      padding: EdgeInsets.only(top: 5),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.white,
                  elevation: 18,
                  shadowColor: const Color.fromARGB(255, 231, 240, 248),
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.user,
                      color: Color(0xFF4D4D4D),
                    ),
                    title: const Text(
                      'Hồ sơ cá nhân',
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              Material(
                color: Colors.white,
                elevation: 18,
                shadowColor: const Color.fromARGB(255, 231, 240, 248),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.lock,
                    color: Color(0xFF4D4D4D),
                  ),
                  title: const Text(
                    'Đổi mật khẩu',
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Material(
                color: Colors.white,
                elevation: 18,
                shadowColor: const Color.fromARGB(255, 231, 240, 248),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.doorOpen,
                    color: Color(0xFF4D4D4D),
                  ),
                  title: const Text(
                    'Đăng xuất',
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
