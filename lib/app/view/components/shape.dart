import 'package:flutter/material.dart';

class Shape extends StatefulWidget {
  const Shape({super.key});

  @override
  State<Shape> createState() => _ShapeState();
}

class _ShapeState extends State<Shape>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
                'alas.png',
                width: 141,
                height: 129,
              );
  }
}