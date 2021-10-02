import 'package:flutter/material.dart';
import 'package:dsm41app/src/pages/basico_page.dart';
import 'package:dsm41app/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'scroll',
      routes: {
        'basico'  : (BuildContext context) => Basicopage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
      },
    
    );
  }
}