import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/home/home.dart';
import 'package:flutter_web_dashboard/utils/app_extensions.dart';
import 'package:flutter_web_dashboard/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: backgroundColor,
        primaryColor: primaryColor,
        primaryColorDark: primaryDarkColor,
        accentColor: accentColor,
        canvasColor: drawerBackgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: GoogleFonts.latoTextTheme().apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      getPages: [
        GetPage(name: Routes.home.path, page: () => HomePage()),
      ],
      initialRoute: Routes.home.path,
    );
  }
}

enum Routes { home, splash }
