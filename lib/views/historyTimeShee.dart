import 'package:flutter/material.dart';
import 'package:timesheet/models/historytimesheet.dart';

class HistoryTimeSheet extends StatelessWidget {
  HistoryTimeSheet({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'Lịch sử chấm công',
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 21,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xFF0D7BD4)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                        onPressed: () {},
                        child: Text(
                          'Tìm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Center(
                child: Container(
                  width: 150,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFB1B2B3)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {},
                      child: Text(
                        'Đăng ký vào ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: 150,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF0D7BD4)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () {},
                      child: Text(
                        'Đăng ký ra ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
        buildListItems(context)
      ],
    );
  }

  final List<historytimesheet> lstHistoryTimeSheet = <historytimesheet>[
    historytimesheet("Dang ky vao", "9:O0 AM", "01/08/2023"),
    historytimesheet("Dang ky ra", "17:O0 PM", "01/08/2023"),
    historytimesheet("Dang ky vao", "9:O0 AM", "02/08/2023"),
    historytimesheet("Dang ky ra", "17:O0 PM", "02/08/2023")
  ];

  Widget buildListItems(BuildContext context) => Container(
        width: 1000,
        height: 1000,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: lstHistoryTimeSheet.length,
            itemBuilder: (BuildContext context, int index) {
              var historytimesheet1 = lstHistoryTimeSheet[index];
              return Container(
                color: Colors.blue,
                child: Center(child: Text('${historytimesheet1.timeNow}')),
              );
            }),
      );
}
