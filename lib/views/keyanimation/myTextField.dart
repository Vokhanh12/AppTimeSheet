import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String TextHint;
  bool ChangeToActive;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final bool enableSuggestions;
  final bool autocorrect;
  final bool obscureText;
  MyTextField({
    Key? key,
    required this.TextHint,
    required this.ChangeToActive,
    required this.enableSuggestions,
    required this.autocorrect,
    required this.obscureText,
    this.keyboardType = TextInputType.emailAddress,
    this.onTap,
    this.onChanged,
  }) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    bool _isChangeToActive = widget.ChangeToActive;

    return TextField(
        onTap: widget.onTap,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        style: TextStyle(
          color: _isChangeToActive ? Color(0xFF0D7BD4) : Color(0xFFA3A9AC),
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: _isChangeToActive
              ? Color.fromARGB(255, 255, 255, 255)
              : Color.fromARGB(255, 239, 244, 247),
          contentPadding: EdgeInsets.fromLTRB(13, 13, 0, 0),
          labelText: widget.TextHint, //Texthint for labelText
          labelStyle: TextStyle(
            color: _isChangeToActive
                ? Color(0xFF0D7BD4).withOpacity(1)
                : Color(0xFFA3A9AC).withOpacity(1),
            fontSize: 15,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: _isChangeToActive
                  ? Color(0xFF0D7BD4)
                  : Color(0xFFA3A9AC), // Set red border color
              width: 2.0, // Set the border width
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Color(0xFF0D7BD4), // Set red border color when focused
              width: 2.0, // Set the border width
            ),
          ),
        ));
  }
}
