import 'music.dart';

class Playlist {
  final String image;
  final String name;
  final String description;
  final List<MusicData> musicList;

  Playlist({
    required this.image,
    required this.name,
    required this.description,
    required this.musicList,
  });
}
