import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rathauswolfe/utils/colors.dart';

class NavigationOptionWidget extends StatefulWidget {
  const NavigationOptionWidget(
      {super.key,
      required this.text,
      required this.isSelected,
      this.isMobile = false});
  final String text;
  final bool isSelected;
  final bool isMobile;

  @override
  State<NavigationOptionWidget> createState() => _NavigationOptionWidgetState();
}

class _NavigationOptionWidgetState extends State<NavigationOptionWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (details) => setState(() => isHovered = true),
        onExit: (details) => setState(() {
              isHovered = false;
            }),
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: (isHovered || widget.isSelected) && !widget.isMobile
                      ? BorderSide(color: colorWhite, width: 3)
                      : BorderSide.none)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 16,
                color: widget.isSelected && widget.isMobile
                    ? HexColor("#7A7A7A")
                    : colorWhite,
                height: 1,
                fontWeight: FontWeight.w700),
          ),
        ));
  }
}
