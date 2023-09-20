import 'package:flutter/material.dart';
import 'package:rathauswolfe/utils/base_text.dart';
import 'package:rathauswolfe/utils/colors.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final rowSpacer = TableRow(children: [
      ...List.generate(
          6,
          (index) => const SizedBox(
                height: 8,
              )),
    ]);
    final data = [
      ["Team", "Punkte", "Spiele", "Sätze", "Legs"],
      ["Knapp u. Knapper", "33", "14", "131:95", "300:241"],
      ["DC Rathauswölfe II", "32", "14", "134:91", "306:232"],
      ["Rhöner Bouncer", "29", "14", "119:106", "281:279"],
      ["DC Rathauswölfe", "24", "14", "121:103", "285:251"],
      ["Dart Crows", "19", "14", "109:116", "267:276"],
      ["Bad Boys", "15", "14", "103:121", "265:280"],
      ["Dartfanatics", "13", "14", "108:119", "249:282"],
      ["Drunken Foxes", "3", "14", "75:149", "215:327"]
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(3),
          2: FlexColumnWidth(2),
          3: FlexColumnWidth(2),
          4: FlexColumnWidth(2),
          5: FlexColumnWidth(2),
        },
        border: TableBorder.all(color: Colors.white),
        children: [
          ...List.generate(
              9,
              (index) => [
                    TableRow(
                        decoration: BoxDecoration(color: HexColor("#16194F")),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              index == 0 ? "#" : '${index}',
                              textAlign: TextAlign.center,
                              style: cusTextStyle(
                                  fontSize: 14,
                                  color: colorWhite,
                                  height: 1,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          ...List.generate(
                              5,
                              (indexD) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      data[index][indexD],
                                      textAlign: TextAlign.center,
                                      style: cusTextStyle(
                                          fontSize: 14,
                                          color: colorWhite,
                                          height: 1,
                                          fontWeight: index == 0
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                  )),
                        ]),
                    rowSpacer
                  ]).expand((list) => list).toList(),
        ],
      ),
    );
  }
}
