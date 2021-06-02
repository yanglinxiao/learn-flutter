import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("列表(StatelessWidget)")),
      body: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MyListItem(
            "title 01", "subtitle 01", "https://via.placeholder.com/300x200"),
        MyListItem(
            "title 02", "subtitle 02", "https://via.placeholder.com/300x200"),
        MyListItem(
            "title 03", "subtitle 03", "https://via.placeholder.com/300x200")
      ],
    );
  }
}

class MyListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  final TextStyle titleStyle = TextStyle(fontSize: 20, color: Colors.lightBlue);
  final TextStyle subtitleStyle =
      TextStyle(fontSize: 16, color: Colors.blueGrey);

  MyListItem(this.title, this.subtitle, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all( width: 2, color: Colors.pink),
          color: Colors.greenAccent),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(title, style: titleStyle),
                margin: EdgeInsets.only(bottom: 4),
              )
            ],
          ),
          Container(
            child: Text(subtitle, style: subtitleStyle),
            margin: EdgeInsets.only(bottom: 4),
          ),
          Image.network(imageUrl)
        ],
      ),
    );
  }
}
