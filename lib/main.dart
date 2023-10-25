import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/controllers.dart';
import 'package:scrap/views/on_boarding/on_boarding_screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ScrapApp());
}

class ScrapApp extends StatelessWidget {
  const ScrapApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: controllers,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: mainClr,
            fontFamily: 'Switzer',
          ),
          home: const Directionality(
            textDirection: TextDirection.ltr,
            child: SafeArea(
              child: ScrapScreen(),
            ),
          ),
        );
      },
    );
  }
}

class ScrapScreen extends StatelessWidget {
  const ScrapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return const OnBoardingScreen();
  }
}
