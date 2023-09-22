import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rathauswolfe/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key, required this.email});
  final String email;

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final Uri emailLaunchUri = Uri(
          scheme: 'mailto',
          path: widget.email,
        );
        launchUrl(emailLaunchUri);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (details) => setState(() => isHovered = true),
        onExit: (details) => setState(() {
          isHovered = false;
        }),
        child: Text(
          widget.email,
          textAlign: TextAlign.start,
          style: GoogleFonts.roboto(
              fontSize: 16,
              color: isHovered ? Colors.black : HexColor("#605BE5"),
              height: 1.5,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
