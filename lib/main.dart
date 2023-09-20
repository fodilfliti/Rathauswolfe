import 'package:flutter/material.dart';
import 'package:rathauswolfe/pages/startseite/screen/startseite_screen.dart';
import 'package:rathauswolfe/pages/startseite/widgets/navigation_option_widget.dart';
import 'package:rathauswolfe/utils/base_text.dart';
import 'package:rathauswolfe/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
  final listPages = const [StartSeinteScreen(), Column(), Column()];
  int index = 0;
  bool isNavOpen = false;
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
              ScreenTypeLayout.builder(
                mobile: (context) => navigationMobile(),
                tablet: (context) => navigationMobile(),
                desktop: (context) => navigationDesctop(),
              ),
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

  Column navigationMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(
            isNavOpen ? Icons.close : Icons.menu,
            color: colorWhite,
          ),
          onPressed: () => setState(() {
            isNavOpen = !isNavOpen;
          }),
        ),
        AnimatedContainer(
          margin: const EdgeInsets.symmetric(vertical: 16),
          duration: const Duration(milliseconds: 600),
          child: Column(
            children: isNavOpen
                ? [
                    GestureDetector(
                      onTap: () => setState(() {
                        index = 0;
                      }),
                      child: NavigationOptionWidget(
                          isMobile: true,
                          text: "Startseite",
                          isSelected: index == 0),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        index = 1;
                      }),
                      child: NavigationOptionWidget(
                          isMobile: true,
                          text: "Impressum",
                          isSelected: index == 1),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        index = 2;
                      }),
                      child: NavigationOptionWidget(
                          isMobile: true,
                          text: "Datenschutz",
                          isSelected: index == 2),
                    ),
                  ]
                : [],
          ),
        )
      ],
    );
  }

  Row navigationDesctop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => setState(() {
            index = 0;
          }),
          child: NavigationOptionWidget(
              text: "Startseite", isSelected: index == 0),
        ),
        GestureDetector(
          onTap: () => setState(() {
            index = 1;
          }),
          child:
              NavigationOptionWidget(text: "Impressum", isSelected: index == 1),
        ),
        GestureDetector(
          onTap: () => setState(() {
            index = 2;
          }),
          child: NavigationOptionWidget(
              text: "Datenschutz", isSelected: index == 2),
        ),
      ],
    );
  }
}
