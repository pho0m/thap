import 'package:flutter/material.dart';

class MusicImage extends StatelessWidget {
  final double width;
  final double height;
  final String musicImage;

  const MusicImage({
    Key? key,
    required this.width,
    required this.height,
    required this.musicImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      elevation: 5,
      child: Container(
        width: width - 50,
        height: height / 2.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            image: NetworkImage(musicImage),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
