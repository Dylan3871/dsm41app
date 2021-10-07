import 'package:flutter/material.dart';
import 'package:dsm41app/src/pages/basico_page.dart';
import 'package:dsm41app/src/pages/scroll_page.dart';
import 'package:dsm41app/src/pages/botones_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
statusBarColor: Colors.white
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico'  : (BuildContext context) => Basicopage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'botones' : (BuildContext context) => BotonesPage(),
        
      },
    
    );
  }
}