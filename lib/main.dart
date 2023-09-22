import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rathauswolfe/pages/datenschutz/screen/datenschutz_screen.dart';
import 'package:rathauswolfe/pages/impressum/screen/impressum_screen.dart';
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
  ScrollController scrollController = ScrollController();
  bool isVisible = false;
  late Timer _scrollTimer = Timer(const Duration(milliseconds: 200), () {});
  double _lastScrollOffset = 0.0;
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  final listPages = const [
    StartSeinteScreen(),
    ImpressumScreen(),
    DatenschutzScreen()
  ];
  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollTimer != null && _scrollTimer.isActive) {
      _scrollTimer.cancel();
    }

    _scrollTimer = Timer(const Duration(milliseconds: 200), () {
      if (scrollController.position.pixels == _lastScrollOffset &&
          scrollController.offset > 0) {
        setState(() {
          isVisible = true;
        });
      } else {
        setState(() {
          _lastScrollOffset = scrollController.position.pixels;
          isVisible = false;
        });
      }
    });
    setState(() {
      _lastScrollOffset = scrollController.position.pixels;
    });
  }

  int index = 0;
  bool isNavOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
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
          AnimatedPositioned(
              bottom: isVisible ? 25 : -200,
              right: 25,
              // ignore: sort_child_properties_last
              child: GestureDetector(
                onTap: () {
                  scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: colorBlackText,
                      )),
                  child: const Icon(
                    Icons.keyboard_arrow_up_outlined,
                    size: 32,
                  ),
                ),
              ),
              duration: const Duration(milliseconds: 500))
        ],
      ),
    );
  }

  Column navigationMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 32,
        ),
        InkWell(
          child: Icon(
            isNavOpen ? Icons.close : Icons.menu,
            color: colorWhite,
          ),
          onTap: () => setState(() {
            isNavOpen = !isNavOpen;
          }),
        ),
        AnimatedContainer(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(vertical: 16),
          duration: const Duration(milliseconds: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: isNavOpen
                ? [
                    GestureDetector(
                      onTap: () => setState(() {
                        index = 0;
                        isNavOpen = !isNavOpen;
                      }),
                      child: NavigationOptionWidget(
                          isMobile: true,
                          text: "Startseite",
                          isSelected: index == 0),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        index = 1;
                        isNavOpen = !isNavOpen;
                      }),
                      child: NavigationOptionWidget(
                          isMobile: true,
                          text: "Impressum",
                          isSelected: index == 1),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        index = 2;
                        isNavOpen = !isNavOpen;
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
