import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/04_%E8%B1%86%E7%93%A3/widgets/dashed_line.dart';

class SubjectContent extends StatefulWidget {
  @override
  _SubjectContentState createState() => _SubjectContentState();
}

class _SubjectContentState extends State<SubjectContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DashedLine(
        dashedWidth: 10,
        dashedHeight: .5,
      ),
    );
  }
}
