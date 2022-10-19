import 'package:flutter/material.dart';
import 'package:news/news.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'News India',
            theme: ThemeData(
              fontFamily: "",
              primarySwatch: Colors.grey,
            ),
            home: HomeScreen());
      },
    );
  }
}
