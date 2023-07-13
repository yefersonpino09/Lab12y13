import 'package:flutter/material.dart';

class H1 extends StatefulWidget {
  const H1(this.text,{super.key, this.color});

  final String text;
  final Color? color;
  @override
  State<H1> createState() => _H1State();
}

class _H1State extends State<H1>
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
    return Text('Bienvenido a mi Aplicacion', style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600));
  }
}