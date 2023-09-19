import 'package:flutter/material.dart';
import 'package:rathauswolfe/pages/startseite/widgets/logo_with_text_section_destop.dart';
import 'package:rathauswolfe/pages/startseite/widgets/logo_with_text_section_mobile.dart';
import 'package:rathauswolfe/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                constraints: BoxConstraints(
                    //maxWidth: 1150,
                    minHeight: MediaQuery.of(context).size.height),
                child: ScreenTypeLayout.builder(
                  mobile: (context) => LogoWithTextSectionMobileWidget(),
                  tablet: (context) => LogoWithTextSectionMobileWidget(),
                  desktop: (context) => LogoWithTextSectionDestopWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
