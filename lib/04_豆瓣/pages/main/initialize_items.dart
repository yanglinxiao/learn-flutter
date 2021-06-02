import 'package:flutter/material.dart';
import 'package:helloflutter/04_%E8%B1%86%E7%93%A3/pages/home/home.dart';
import 'package:helloflutter/04_%E8%B1%86%E7%93%A3/pages/main/bottom_bar_item.dart';
import 'package:helloflutter/04_%E8%B1%86%E7%93%A3/pages/subject/subject.dart';

List<BottomBarItem> items = [
  BottomBarItem("home", "首页"),
  BottomBarItem("subject", "书影音"),
];

List<Widget> pages = [
  HomePage(),
  SubjectPage()
];