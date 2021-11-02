import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';

class MusicData {
  final String title;
  final String artist;
  final String image;
  final String musicPlay;
  final String lyrics;
  final String dataArtist;
  final Color color;

  MusicData({
    required this.title,
    required this.artist,
    required this.image,
    required this.musicPlay,
    required this.lyrics,
    required this.dataArtist,
    this.color = dtPrimaryColor,
  });
}
