import 'package:flutter/material.dart';
import './paginas/home_page.dart';
import './paginas/image_example.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/images':(BuildContext context) => ImagesExample(),
        '/home':(BuildContext context) => HomePage()
      },
    );
  }

}

