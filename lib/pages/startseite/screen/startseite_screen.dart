import 'package:flutter/material.dart';
import 'package:rathauswolfe/pages/startseite/widgets/logo_with_text_section_destop.dart';
import 'package:rathauswolfe/pages/startseite/widgets/logo_with_text_section_mobile.dart';
import 'package:rathauswolfe/pages/startseite/widgets/table_widget.dart';
import 'package:rathauswolfe/utils/base_text.dart';
import 'package:rathauswolfe/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartSeinteScreen extends StatelessWidget {
  const StartSeinteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colorBgPrimary),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: colorBgPrimary),
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: getValueForScreenType<double>(
                    context: context,
                    mobile: 35,
                    tablet: 55,
                    desktop: 75,
                  ),
                  horizontal: 32),
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: ScreenTypeLayout.builder(
                mobile: (context) => const LogoWithTextSectionMobileWidget(),
                tablet: (context) => const LogoWithTextSectionMobileWidget(),
                desktop: (context) => const LogoWithTextSectionDestopWidget(),
              ),
            ),
          ),
          Container(
            color: colorWhite,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 16),
            child: Column(
              children: [
                LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return constraints.maxWidth < 580
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              constraints: const BoxConstraints(
                                maxWidth: 600,
                              ),
                              child: const TableWidget()),
                        )
                      : Container(
                          constraints: const BoxConstraints(
                              maxWidth: 1048, minWidth: 570),
                          child: const TableWidget());
                }),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1048),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    '8. Open Air Dart Turnier',
                    textAlign: TextAlign.center,
                    style: cusTextStyle(
                        fontSize: 36,
                        color: colorWhite,
                        height: 1,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Seid ihr bereit für das jährliche Highlight unseres Dart-Clubs? Dann solltet ihr euch das ultimative Darts-Turnier auf keinen Fall entgehen lassen! Hier trefft ihr auf begeisterte Dartspieler und -spielerinnen aus der ganzen Region und könnt eure Skills unter Beweis stellen. Das Turnier ist jedes Jahr ein absolutes Highlight für uns und wir freuen uns immer wieder aufs Neue darauf. Es ist die perfekte Gelegenheit, um neue Leute kennenzulernen, alte Freunde zu treffen und eine tolle Zeit zu haben.&nbsp; Also merkt euch den Termin schon mal vor und lasst euch dieses Event nicht entgehen!",
                      textAlign: TextAlign.center,
                      style: cusTextStyle(
                          fontSize: 18,
                          color: colorWhite,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Datum folgt in kürze',
                    textAlign: TextAlign.center,
                    style: cusTextStyle(
                        fontSize: 16,
                        color: HexColor("#7A7A7A"),
                        height: 1,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
