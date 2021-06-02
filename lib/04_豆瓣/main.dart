import 'package:flutter/material.dart';
import './pages/main/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "豆瓣",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent // 这里测试并没发现这个属性的作用
      ),
      home: MainPage(),
    );
  }
}
