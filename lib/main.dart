import 'package:flutter/material.dart';
import 'package:rathauswolfe/pages/startseite/screen/startseite_screen.dart';
import 'package:rathauswolfe/utils/base_text.dart';
import 'package:rathauswolfe/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DC Rathauswölfe Schwebenried',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorBgPrimary),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final listPages = const [StartSeinteScreen()];
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: colorBgPrimary),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              listPages[index],
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(color: colorBgPrimary),
                child: Center(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        // ignore: deprecated_member_use
                        launch("https://jxnxs.de/");
                      },
                      child: Text(
                        'DC Rathauswölfe Schwebenried © 2023 by JXNXS.de​',
                        textAlign: TextAlign.start,
                        style: cusTextStyle(
                            fontSize: 16,
                            color: colorWhite,
                            height: 1,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
