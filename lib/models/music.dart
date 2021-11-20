import 'package:thap_mobile/theme/constant.dart';
import 'package:flutter/material.dart';

class MusicData {
  final String title;
  final String artist;
  final String artistID;
  final String image;
  final String music;
  final String lyrics;
  final Color color;

  MusicData({
    required this.title,
    required this.artist,
    required this.artistID,
    required this.image,
    required this.music,
    required this.lyrics,
    this.color = dtPrimaryColor,
  });
}
