import 'package:flutter/material.dart';
import 'package:uiflutter/theme.dart';

import 'background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            backgroundColor: MyTheme.primary,
            iconTheme: IconThemeData(color: MyTheme.secondry, size: 35),
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => Background(),
      },
    );
  }
}
