import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final Axis axis; // 虚线方向
  final double dashedWidth; // 虚线宽度
  final double dashedHeight; // 虚线高度
  final int count; // 虚线数量
  final Color color; // 虚线颜色

  DashedLine(
      {this.axis = Axis.horizontal,
      this.dashedWidth = 1,
      this.dashedHeight = 1,
      this.count = 10,
      this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (index) {
        return SizedBox(
          width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(color: color),
          ),
        );
      }),
    );
  }
}
