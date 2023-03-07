import 'dart:ui';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:flutter/material.dart';

class CenterWidgetPainter extends CustomPainter {
  final Path path;

  const CenterWidgetPainter({required this.path});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..imageFilter = ImageFilter.blur(sigmaX: 10, sigmaY: 10)
      ..color = Colors.black26;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CenterWidgetPainter oldDelegate) => false;
}
