import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('同意协议'),
      ),
      body: MyHomePageBody(),
    );
  }
}

class MyHomePageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageBodyState();
  }
}

class MyHomePageBodyState extends State<MyHomePageBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value;
                });
              }),
          Text("同意协议")
        ],
      ),
    );
  }
}
