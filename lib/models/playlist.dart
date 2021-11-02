import 'music.dart';

class Playlist {
  final String playlistName;
  final String description;
  final List<MusicData> musicList;

  Playlist({
    required this.playlistName,
    required this.description,
    required this.musicList,
  });
}
