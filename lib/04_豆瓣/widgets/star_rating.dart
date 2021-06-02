import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final double rating; // 评分
  final double maxRating; // 满分
  final int count; // 评分的星星个数
  final double size; // 评分的星星尺寸
  final Widget selectedImage; // 评分选中的图片
  final Widget unselectedImage; // 评分未选中的图片
  final Color selectedColor; // 评分选中的颜色
  final Color unselectedColor; // 评分未选中的颜色

  StarRating(
      {@required this.rating, // 评分是必传
      this.maxRating = 10,
      this.count = 5,
      this.size = 32,
      this.selectedColor = const Color(0xffe0aa46),
      this.unselectedColor = const Color(0xffbbbbbb),
      // this.selectedImage,
      // this.unselectedImage
      Widget selectedImage,
      Widget unselectedImage})
      : unselectedImage = unselectedImage ??
            Icon(
              Icons.star,
              size: size,
              color: unselectedColor,
            ),
        selectedImage =
            selectedImage ?? Icon(Icons.star, size: size, color: selectedColor);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnselectedStar(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectedStar(),
        ),

      ],
    );
  }

  // 未选中
  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) => widget.unselectedImage);
  }

  // 选中
  List<Widget> buildSelectedStar() {
    List<Widget> stars = [];
    final star = widget.selectedImage;
    // 1、计算满格星星个数
    double oneValue = widget.maxRating / widget.count; // 每个星星占的百分比
    int entireCount = (widget.rating / oneValue).floor(); // 当前评分占据完整的星星个数
    for (var i = 0; i < entireCount; i++) {
      stars.add(star);
    }

    // 2、计算不满格星星
    double leftWidth = (widget.rating / oneValue - entireCount) * widget.size;

    final halfStar = ClipRect(clipper: StarClipper(leftWidth), child: star);
    stars.add(halfStar);

    return stars.length > widget.count ? stars.sublist(0, widget.count) : stars;
  }
}

class StarClipper extends CustomClipper<Rect> {
  final double width;

  StarClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(StarClipper oldClipper) {
    return width != oldClipper.width;
  }
}
