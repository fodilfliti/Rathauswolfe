import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rathauswolfe/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinkWidget extends StatefulWidget {
  const LinkWidget({super.key, required this.link});
  final String link;

  @override
  State<LinkWidget> createState() => _LinkWidgetState();
}

class _LinkWidgetState extends State<LinkWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final Uri linkLaunchUri = Uri(
          scheme: 'https',
          path: widget.link,
        );
        launchUrl(linkLaunchUri);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (details) => setState(() => isHovered = true),
        onExit: (details) => setState(() {
          isHovered = false;
        }),
        child: Text(
          "https://" + widget.link,
          textAlign: TextAlign.start,
          style: GoogleFonts.roboto(
              fontSize: 16,
              color: isHovered ? Colors.black : HexColor("#605BE5"),
              height: 1.1,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
