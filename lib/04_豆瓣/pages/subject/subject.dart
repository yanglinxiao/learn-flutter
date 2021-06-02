import 'package:flutter/material.dart';
import 'package:helloflutter/04_%E8%B1%86%E7%93%A3/pages/subject/subject_content.dart';

class SubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: SubjectContent(),
    );
  }
}
