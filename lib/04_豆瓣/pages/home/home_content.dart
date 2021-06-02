import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/04_%E8%B1%86%E7%93%A3/widgets/star_rating.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Text("首页内容"),
      child: StarRating(
        rating: 6.5,
        unselectedImage: Icon(
          Icons.star,
          size: 32,
          color: const Color(0xffbbbbbb),
        ),
        selectedImage:
            Icon(Icons.star, size: 32, color: const Color(0xffe0aa46)),
      ),
    );
  }
}
