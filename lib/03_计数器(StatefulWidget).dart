import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("03_计数器(StatefulWidget)"),
      ),
      body: MyHomePageBody(),
    );
  }
}

class MyHomePageBody extends StatefulWidget {
  @override
  _MyHomePageBodyState createState() => _MyHomePageBodyState();
}

class _MyHomePageBodyState extends State<MyHomePageBody> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                child: Icon(Icons.add, color: Colors.white),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)
                ),
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                }),
            ElevatedButton(
                child: Text("-",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent)),
                onPressed: () {
                  setState(() {
                    _count--;
                  });
                })
          ],
        ),
        Text("当前计算的值: ${_count}")
      ],
    );
  }
}
