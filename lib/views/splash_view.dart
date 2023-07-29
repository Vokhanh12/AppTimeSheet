import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 844,
      padding: const EdgeInsets.only(
        top: 399,
        left: 84,
        right: 84,
        bottom: 408,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFF0D7BD4)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 222,
            height: 37,
            child: Text(
              'TIMESHEET',
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
