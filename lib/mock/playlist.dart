import 'package:dt_app/models/models.dart';
import './mock.dart';

final List<Playlist> mockPlaylist = [
  Playlist(
    playlistName: "Popular Now",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    musicList: mockMusPlaylist1,
  ),
  Playlist(
    playlistName: "Like A Boss !",
    description:
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
    musicList: mockMusPlaylist2,
  ),
  Playlist(
    playlistName: "Cold Fire",
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    musicList: mockMusPrep,
  ),
  Playlist(
    playlistName: "The 1975",
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    musicList: mockMus1975,
  )
];
