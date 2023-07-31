import 'package:flutter/material.dart';
import 'package:timesheet/views/keyanimation/myTextField.dart';

class RegisterView extends StatefulWidget {
  RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _isChangeToActive_tfNameEmployee = false;
  bool _isChangeToActive_tfOffice = false;
  bool _isChangeToActive_tfTypeOfWork = false;
  bool _isChangeToActive_tfEmail = false;
  bool _isChangeToActive_tfStatus = false;
  bool _isChangeToActive_tfCreator = false;
  bool _isChangeToActive_tfRank = false;
  bool _isChangeToActive_tfDateCreated = false;

  String _value_NameEmployee = "";
  String _value_Office = "";
  String _value_TypeOfWork = "";
  String _value_Email = "";
  String _value_Status = "";
  String _value_Creator = "";
  String _value_Rank = "";
  String _value_DateCreated = "";

  @override
  Widget build(BuildContext context) {
    final double SCREEN_HEIGHT = MediaQuery.of(context).size.height;
    final double SCREEN_WIDTH = MediaQuery.of(context).size.width;
    final double MIN_CONTAINER_HEIGHT = 90; // Chiều cao tối thiểu của Container
    final double MAX_CONTAINER_HEIGHT = 100; // Chiều cao tối đa của Container

    return Scaffold(
      body: Container(
        width: SCREEN_WIDTH,
        height: SCREEN_HEIGHT,
        child: Column(
          children: [
            Stack(
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    // Tính toán chiều cao phù hợp của Container dựa trên chiều cao của màn hình
                    double containerHeight =
                        constraints.maxHeight < MIN_CONTAINER_HEIGHT
                            ? MIN_CONTAINER_HEIGHT
                            : constraints.maxHeight;
                    containerHeight = containerHeight > MAX_CONTAINER_HEIGHT
                        ? MAX_CONTAINER_HEIGHT
                        : containerHeight;

                    return Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: containerHeight,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    './lib/asset/image/background-head.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  width: SCREEN_WIDTH,
                                  height: containerHeight - 30,
                                  color: Color(0xFF0D7BD4),
                                ),
                              ),
                              Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 50),
                                  child: AspectRatio(
                                    aspectRatio: 4.6,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          child: Container(
                                            width: SCREEN_WIDTH,
                                            height: 115.59,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    './lib/asset/image/vector-head.png'),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 42,
                                          top: 15,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'ĐĂNG KÝ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 26,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: SCREEN_WIDTH - 30,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        width: SCREEN_WIDTH,
                        child: MyTextField(
                          TextHint: 'Tên nhân viên',
                          ChangeToActive: _isChangeToActive_tfNameEmployee,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              _isChangeToActive_tfNameEmployee = true;
                              _isChangeToActive_tfCreator =
                                  _value_Creator.isNotEmpty;
                              _isChangeToActive_tfDateCreated =
                                  _value_DateCreated.isNotEmpty;
                              _isChangeToActive_tfEmail =
                                  _value_Email.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfOffice =
                                  _value_Office.isNotEmpty;
                              _isChangeToActive_tfStatus =
                                  _value_Status.isNotEmpty;
                              _isChangeToActive_tfRank = _value_Rank.isNotEmpty;
                              _isChangeToActive_tfTypeOfWork =
                                  _value_TypeOfWork.isNotEmpty;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _value_NameEmployee = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: SCREEN_WIDTH,
                        child: MyTextField(
                          TextHint: 'Văn phòng làm việc',
                          ChangeToActive: _isChangeToActive_tfOffice,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              _isChangeToActive_tfOffice = true;

                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfCreator =
                                  _value_Creator.isNotEmpty;
                              _isChangeToActive_tfDateCreated =
                                  _value_DateCreated.isNotEmpty;
                              _isChangeToActive_tfEmail =
                                  _value_Email.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;

                              _isChangeToActive_tfStatus =
                                  _value_Status.isNotEmpty;
                              _isChangeToActive_tfOffice =
                                  _value_Rank.isNotEmpty;
                              _isChangeToActive_tfTypeOfWork =
                                  _value_TypeOfWork.isNotEmpty;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _value_Office = value;
                            });
                            print("AAAAAAAAAAAAAAAAAAA $value");
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                            width: (SCREEN_WIDTH / 3) - 18,
                            child: MyTextField(
                              TextHint: 'Cấp bậc',
                              ChangeToActive: _isChangeToActive_tfRank,
                              enableSuggestions: false,
                              autocorrect: false,
                              obscureText: false,
                              onTap: () {
                                setState(() {
                                  _isChangeToActive_tfRank = true;
                                  _isChangeToActive_tfCreator =
                                      _value_Creator.isNotEmpty;
                                  _isChangeToActive_tfDateCreated =
                                      _value_DateCreated.isNotEmpty;
                                  _isChangeToActive_tfEmail =
                                      _value_Email.isNotEmpty;
                                  _isChangeToActive_tfNameEmployee =
                                      _value_NameEmployee.isNotEmpty;
                                  _isChangeToActive_tfOffice =
                                      _value_Office.isNotEmpty;
                                  _isChangeToActive_tfStatus =
                                      _value_Status.isNotEmpty;
                                  _isChangeToActive_tfNameEmployee =
                                      _value_NameEmployee.isNotEmpty;
                                  _isChangeToActive_tfTypeOfWork =
                                      _value_TypeOfWork.isNotEmpty;
                                });
                              },
                              onChanged: (value) {
                                setState(() {
                                  _value_Rank = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          SizedBox(
                            width:
                                ((SCREEN_WIDTH / 3) + (SCREEN_WIDTH / 3)) - 18,
                            child: MyTextField(
                              TextHint: 'Loại hình công việc',
                              ChangeToActive: _isChangeToActive_tfTypeOfWork,
                              enableSuggestions: false,
                              autocorrect: false,
                              obscureText: false,
                              onTap: () {
                                setState(() {
                                  _isChangeToActive_tfTypeOfWork = true;
                                  _isChangeToActive_tfCreator =
                                      _value_Creator.isNotEmpty;
                                  _isChangeToActive_tfDateCreated =
                                      _value_DateCreated.isNotEmpty;
                                  _isChangeToActive_tfEmail =
                                      _value_Email.isNotEmpty;
                                  _isChangeToActive_tfNameEmployee =
                                      _value_NameEmployee.isNotEmpty;
                                  _isChangeToActive_tfOffice =
                                      _value_Office.isNotEmpty;
                                  _isChangeToActive_tfStatus =
                                      _value_Status.isNotEmpty;
                                  _isChangeToActive_tfRank =
                                      _value_Rank.isNotEmpty;
                                  _isChangeToActive_tfNameEmployee =
                                      _value_NameEmployee.isNotEmpty;
                                });
                              },
                              onChanged: (value) {
                                setState(() {
                                  _value_TypeOfWork = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: SCREEN_WIDTH,
                        child: MyTextField(
                          TextHint: 'Email',
                          ChangeToActive: _isChangeToActive_tfEmail,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              _isChangeToActive_tfEmail = true;
                              _isChangeToActive_tfCreator =
                                  _value_Creator.isNotEmpty;
                              _isChangeToActive_tfDateCreated =
                                  _value_DateCreated.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfOffice =
                                  _value_Office.isNotEmpty;
                              _isChangeToActive_tfStatus =
                                  _value_Status.isNotEmpty;
                              _isChangeToActive_tfRank = _value_Rank.isNotEmpty;
                              _isChangeToActive_tfTypeOfWork =
                                  _value_TypeOfWork.isNotEmpty;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _value_Email = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: SCREEN_WIDTH,
                        child: MyTextField(
                          TextHint: 'Trạng thái',
                          ChangeToActive: _isChangeToActive_tfStatus,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              _isChangeToActive_tfStatus = true;
                              _isChangeToActive_tfCreator =
                                  _value_Creator.isNotEmpty;
                              _isChangeToActive_tfDateCreated =
                                  _value_DateCreated.isNotEmpty;
                              _isChangeToActive_tfEmail =
                                  _value_Email.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfOffice =
                                  _value_Office.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfRank = _value_Rank.isNotEmpty;
                              _isChangeToActive_tfTypeOfWork =
                                  _value_TypeOfWork.isNotEmpty;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _value_Status = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: SCREEN_WIDTH,
                        child: MyTextField(
                          TextHint: 'Người tạo',
                          ChangeToActive: _isChangeToActive_tfCreator,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              _isChangeToActive_tfCreator = true;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfDateCreated =
                                  _value_DateCreated.isNotEmpty;
                              _isChangeToActive_tfEmail =
                                  _value_Email.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfOffice =
                                  _value_Office.isNotEmpty;
                              _isChangeToActive_tfStatus =
                                  _value_Status.isNotEmpty;
                              _isChangeToActive_tfRank = _value_Rank.isNotEmpty;
                              _isChangeToActive_tfTypeOfWork =
                                  _value_TypeOfWork.isNotEmpty;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _value_Creator = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: SCREEN_WIDTH,
                        child: MyTextField(
                          TextHint: 'Ngày tạo',
                          ChangeToActive: _isChangeToActive_tfDateCreated,
                          enableSuggestions: false,
                          autocorrect: false,
                          obscureText: false,
                          onTap: () {
                            setState(() {
                              _isChangeToActive_tfDateCreated = true;
                              _isChangeToActive_tfCreator =
                                  _value_Creator.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_DateCreated.isNotEmpty;
                              _isChangeToActive_tfEmail =
                                  _value_Email.isNotEmpty;
                              _isChangeToActive_tfNameEmployee =
                                  _value_NameEmployee.isNotEmpty;
                              _isChangeToActive_tfOffice =
                                  _value_Office.isNotEmpty;
                              _isChangeToActive_tfStatus =
                                  _value_Status.isNotEmpty;
                              _isChangeToActive_tfRank = _value_Rank.isNotEmpty;
                              _isChangeToActive_tfTypeOfWork =
                                  _value_TypeOfWork.isNotEmpty;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _value_DateCreated = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: SCREEN_WIDTH - 30, maxHeight: 150),
                  child: Column(
                    children: [
                      Container(
                        width: SCREEN_WIDTH,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFF2D39A6)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            onPressed: () {},
                            child: Text(
                              'Đăng ký',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: SCREEN_WIDTH,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Color(0xFF0D7BD4)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8)))),
                            onPressed: () {},
                            child: Text(
                              'Đăng nhập',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
