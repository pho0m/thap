import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageContent extends StatefulWidget {
  final List<String> imageData;
  const ImageContent({
    Key? key,
    required this.imageData,
  }) : super(key: key);

  @override
  _ImageContentState createState() => _ImageContentState();
}

class _ImageContentState extends State<ImageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: true,
        ),
        items: widget.imageData
            .map(
              (e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      e,
                      width: 1050,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
