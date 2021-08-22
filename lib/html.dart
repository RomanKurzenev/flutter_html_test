import 'package:flutter/material.dart';
import 'package:flutter_html_test/details.dart';
import 'package:flutter_html_test/html_testing.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HtmlTesting(title: 'Custom Tag'),
        '/details': (context) => DetailsScreen(),
      },
      //home: HtmlTesting(title: 'Custom Tag'),
    );
  }
}
