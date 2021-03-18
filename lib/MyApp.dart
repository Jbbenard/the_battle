import 'package:flutter/material.dart';
import 'pages/AllCharactersPage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Knewave',
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
       
      ),
      home: AllCharactersPage(
        title: 'The Battle',
        ),
    );
  }
}