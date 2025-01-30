import 'package:flutter/material.dart';

class UnderlineText extends StatefulWidget {
  final String text;

  const UnderlineText({super.key, required this.text, required Null Function() onTap});

  @override
  // ignore: library_private_types_in_public_api
  _UnderlineTextState createState() => _UnderlineTextState();
}

class _UnderlineTextState extends State<UnderlineText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.text,
        style: TextStyle(
          decoration: _isHovered ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }
}
