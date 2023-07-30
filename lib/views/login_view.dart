import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:timesheet/views/keyanimation/buttonEye.dart';
import 'package:timesheet/views/keyanimation/myTextField.dart';
import 'package:timesheet/views/screenCconfig.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isChangeToActive_Email = false;
  bool _isChangeToActive_Password = false;
  bool _isChangeToActive_IconButton = false;
  bool _isChangeIcon = false;
  bool _isChangeObscureText = true;
  String _valueEmail = '';
  String _valuePassword = '';
  int _countIcon = 0;
  @override
  Widget build(BuildContext context) {
    final double SCREEN_HEIGHT = MediaQuery.of(context).size.height;
    final double SCREEN_WIDTH = MediaQuery.of(context).size.width;
    ScreenConfig screenConfig = ScreenConfig(SCREEN_WIDTH, SCREEN_HEIGHT);

    final double initialPhoneWidth = 390.0;
    final double initialPhoneHeight = 844.0;

    final double logoWidth = 292.79;
    final double logoHeight = 218.29;

    // Tính toán tỷ lệ giữa kích thước khung điện thoại mới và ban đầu
    final double widthRatio = SCREEN_WIDTH / initialPhoneWidth;
    final double heightRatio = SCREEN_HEIGHT / initialPhoneHeight;

    // Tính toán kích thước mới cho logo dựa trên tỷ lệ
    final double newLogoWidth = logoWidth * widthRatio;
    final double newLogoHeight = logoHeight * heightRatio;

    print(SCREEN_HEIGHT);
    print(SCREEN_WIDTH);

    return Scaffold(
      body: Container(
        width: SCREEN_WIDTH,
        height: SCREEN_HEIGHT,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  left: -10,
                  right: -10,
                  top: 190,
                  child: Container(
                    width: SCREEN_WIDTH,
                    height: 310.59,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                          './lib/asset/image/Vector-background-bottom.png'),
                      fit: BoxFit.fill,
                    )),
                  ),
                ),
                Container(
                  width: SCREEN_WIDTH,
                  height: 367,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image:
                        AssetImage('./lib/asset/image/Vector-background.png'),
                    fit: BoxFit.fill,
                  )),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: newLogoWidth + screenConfig.getRatioLogoWigth(),
                    height: newLogoHeight + screenConfig.getRatioLogoHeight(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('./lib/asset/image/icon-logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 330,
                  top: -52,
                  child: Container(
                    width: 117,
                    height: 117,
                    decoration: ShapeDecoration(
                      color: Color(0xE5FFE500),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                    top: 280,
                    child: Container(
                      width: SCREEN_WIDTH,
                      child: SizedBox(
                        width: 168,
                        height: 31,
                        child: Text(
                          'ĐĂNG NHẬP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    )),
                Positioned(
                  left: 348 * widthRatio,
                  top: 81.02 * heightRatio,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-0.41),
                    child: Container(
                      width: 12.64,
                      height: 11.69,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 53 * widthRatio,
                  top: 242.02 * heightRatio,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-0.41),
                    child: Container(
                      width: 12.64,
                      height: 11.69,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 255.35 * widthRatio,
                  top: 12 * heightRatio,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(0.38),
                    child: Container(
                      width: 12.64,
                      height: 11.69,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 320.35 * widthRatio,
                  top: 198 * heightRatio,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(0.38),
                    child: Container(
                      width: 12.64,
                      height: 11.69,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 116.35 * widthRatio,
                  top: 65 * heightRatio,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(0.38),
                    child: Container(
                      width: 12.64,
                      height: 11.69,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 255.35 * widthRatio,
                  top: 12 * heightRatio,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(0.38),
                    child: Container(
                      width: 12.64,
                      height: 11.69,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: StarBorder(
                          points: 5,
                          innerRadiusRatio: 0.38,
                          pointRounding: 0,
                          valleyRounding: 0,
                          rotation: 0,
                          squash: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  left: 18,
                  right: 12,
                  child: Container(
                    width: SCREEN_HEIGHT,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            './lib/asset/image/shadow_formfield.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Center(
                      child: Column(
                        children: [
                          MyTextField(
                            keyboardType: TextInputType.emailAddress,
                            TextHint: 'Email',
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: false,
                            ChangeToActive: _isChangeToActive_Email,
                            onTap: () {
                              setState(() {
                                _isChangeToActive_Email = true;
                                _isChangeToActive_Email = true;
                                _isChangeToActive_Password =
                                    _valuePassword.isNotEmpty;
                              });
                            },
                            onChanged: (value) {
                              setState(() {
                                _valueEmail = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Stack(
                            children: [
                              Positioned(
                                child: MyTextField(
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  obscureText: _isChangeObscureText,
                                  TextHint: 'Mật khẩu',
                                  ChangeToActive: _isChangeToActive_Password,
                                  onTap: () {
                                    setState(() {
                                      _isChangeToActive_Password = true;
                                      if (_valueEmail.isEmpty)
                                        _isChangeToActive_Email = false;
                                      else
                                        _isChangeToActive_Email = true;
                                    });
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _valuePassword = value;
                                    });
                                  },
                                ),
                              ),
                              Positioned(
                                  top: 5,
                                  right: 20,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: 25,
                                        height: 16.7,
                                        child: ButtonEye(
                                          ChangeIcon: _isChangeIcon,
                                          isChangeToAcitve:
                                              _isChangeToActive_Password,
                                          onPressed: () {
                                            setState(() {
                                              if (_countIcon % 2 == 0) {
                                                _isChangeIcon = true;
                                                print("show password");
                                                _isChangeObscureText = false;
                                              } else {
                                                _isChangeIcon = false;
                                                print("hide password");
                                                _isChangeObscureText = true;
                                              }
                                              _countIcon++;

                                              _isChangeToActive_IconButton =
                                                  true;
                                            });
                                          },
                                        )),
                                  ))
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Quên mật khẩu?",
                                  style: TextStyle(
                                    color: Color(0xFF2899F6),
                                    fontSize: 13,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                          ),
                          Container(
                            width: SCREEN_WIDTH,
                            height: 50,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color(0xFF2D39A6)),
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
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: SCREEN_WIDTH,
                            height: 50,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color(0xFF0D7BD4)),
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
                            height: 15,
                          ),
                          SizedBox(
                            width: 29,
                            height: 19,
                            child: Text(
                              'Hoặc',
                              style: TextStyle(
                                color: Color(0xFFA3A9AC),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(27),
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(203, 40),
                                padding: EdgeInsets.symmetric(vertical: 4),
                                primary: Color(0xFFC31E1E),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 33,
                                                height: 22.69,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "./lib/asset/image/icon-google.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 1.50,
                                                height: 17,
                                                decoration: ShapeDecoration(
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Container(
                                          height: 18,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Tài khoản Google+',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
