import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonEye extends StatefulWidget {
  final VoidCallback? onPressed;
  final bool isChangeToAcitve;
  final bool ChangeIcon;

  ButtonEye(
      {Key? key,
      required this.isChangeToAcitve,
      required this.ChangeIcon,
      this.onPressed})
      : super(key: key);

  @override
  State<ButtonEye> createState() => _ButtonEyeState();
}

class _ButtonEyeState extends State<ButtonEye> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: widget.onPressed,
        icon: widget.ChangeIcon
            ? FaIcon(FontAwesomeIcons.eye,
                color: widget.isChangeToAcitve
                    ? Color(0xFF0D7BD4)
                    : Color(0xFFA3A9AC))
            : FaIcon(FontAwesomeIcons.eyeSlash,
                color: widget.isChangeToAcitve
                    ? Color(0xFF0D7BD4)
                    : Color(0xFFA3A9AC)));
  }
}
