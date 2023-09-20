import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rathauswolfe/utils/base_text.dart';
import 'package:rathauswolfe/utils/colors.dart';

class LogoWithTextSectionDestopWidget extends StatefulWidget {
  const LogoWithTextSectionDestopWidget({super.key});

  @override
  State<LogoWithTextSectionDestopWidget> createState() =>
      _LogoWithTextSectionDestopWidgetState();
}

class _LogoWithTextSectionDestopWidgetState
    extends State<LogoWithTextSectionDestopWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            final width = min<double>(constraints.maxWidth, 512);

            return SizedBox(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DC Rathauswölfe Schwebenried',
                    textAlign: TextAlign.start,
                    style: cusTextStyle(
                        fontSize: 36,
                        color: colorWhite,
                        height: 1,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Willkommen auf der Seite der “DC Rathauswölfe”! Wir sind eine vielfältige Gruppe von Dartspielern, die das Zielen mit Pfeilen lieben und dabei viel Spaß haben. Neben dem Training nehmen wir an Wettkämpfen und Turnieren in der Region teil und legen uns ins Zeug. Doch bei uns zählt nicht nur das Gewinnen, sondern auch die Gemeinschaft und das Zusammensein. Beim Training wird hart geübt, gelacht und das eine oder andere Getränk genossen. Unser jährliches Dartturnier ist das Highlight, wo wir uns mit anderen Dartfans aus der Region messen.',
                      textAlign: TextAlign.start,
                      style: cusTextStyle(
                          fontSize: 18,
                          color: colorWhite,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
        const SizedBox(
          width: 75,
        ),
        Flexible(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            final width = min<double>(constraints.maxWidth, 512);
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 49),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: TapRegion(
                  onTapInside: (tap) {
                    setState(() => isHovered = true);
                  },
                  onTapOutside: (tap) {
                    setState(() => isHovered = false);
                  },
                  child: Container(
                    width: width,
                    height: width * 0.9,
                    decoration: BoxDecoration(
                        color: HexColor("#6A6D9D"),
                        borderRadius: BorderRadius.circular(width * 0.18)),
                    child: MouseRegion(
                      onEnter: (details) => setState(() => isHovered = true),
                      onExit: (details) => setState(() {
                        isHovered = false;
                      }),
                      child: AnimatedScale(
                        scale: isHovered ? 1.1 : 1.0,
                        duration: const Duration(milliseconds: 200),
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.fitWidth,
                        ), // Replace with your image path
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        )
      ],
    );
  }
}
