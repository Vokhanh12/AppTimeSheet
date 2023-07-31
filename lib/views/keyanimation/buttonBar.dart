import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButtonBar extends StatefulWidget {
  const CustomButtonBar({Key? key}) : super(key: key);

  @override
  State<CustomButtonBar> createState() => _CustomButtonBarState();
}

class _CustomButtonBarState extends State<CustomButtonBar> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: FaIcon(
          FontAwesomeIcons.bars,
          color: Color.fromARGB(255, 255, 255, 255),
        ));
  }
}
