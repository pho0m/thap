import 'dart:ui' as ui;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ShadowText extends StatelessWidget {
  final String data;
  final TextStyle style;
  final double opacity;
  final double minFontSize;
  final int maxLines;
  final TextOverflow overflow;

  const ShadowText({
    Key? key,
    required this.data,
    required this.style,
    required this.opacity,
    required this.minFontSize,
    required this.maxLines,
    required this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        children: [
          Positioned(
            top: 2.0,
            left: 2.0,
            child: AutoSizeText(
              data,
              style: style.copyWith(color: Colors.black.withOpacity(opacity)),
              minFontSize: minFontSize,
              overflow: overflow,
              maxLines: maxLines,
            ),
          ),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Text(data, style: style),
          ),
        ],
      ),
    );
  }
}
