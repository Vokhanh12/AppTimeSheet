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
  String _valueEmail = '';
  String _valuePassword = '';
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
                            TextHint: 'Email',
                            ChangeToActive: _isChangeToActive_Email,
                            onTap: () {
                              setState(() {
                                _isChangeToActive_Email = true;
                                if (_valuePassword.isEmpty)
                                  _isChangeToActive_Password = false;
                                else
                                  _isChangeToActive_Password = true;
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
                                  TextHint: 'Password',
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
                                              _isChangeIcon = true;

                                              _isChangeToActive_IconButton =
                                                  true;
                                            });
                                          },
                                        )),
                                  ))
                            ],
                          ),
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
