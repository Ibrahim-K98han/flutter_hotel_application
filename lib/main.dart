import 'package:flutter/material.dart';
import 'package:flutter_listview/pages/home_page.dart';
import 'package:flutter_listview/pages/photo_filter_page.dart';
import 'package:flutter_listview/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName : (context) => HomePage(),
        SecondPage.routeName : (context) => SecondPage(),
        PhotoFilterPage.routeName : (context) => PhotoFilterPage(),
      },
    );
  }
}

