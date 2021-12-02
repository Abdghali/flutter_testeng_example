import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testingexample1/pages/loginPage.dart';
import 'package:testingexample1/widget.dart/scroll_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> books = [
    "Book 0",
    "Book 1",
    "Book 2",
    "Book 3",
    "Book 4",
    "Book 5",
    "Book 6",
    "Book 7",
    "Book 8",
    "Book 9",
    "Book 10",
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // mixen 
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: CustomeScrollViewWidget(
      //   bookTitle: books,
      // ),
      home: LoginPage(),
    );
  }
}
