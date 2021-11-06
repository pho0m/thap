import 'package:dt_app/models/models.dart';
import './mock.dart';

final List<Playlist> mockPlaylist = [
  Playlist(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlTS1mGWI-WNFkoxPrvMnTVXrEGNFE8Qx19w&usqp=CAU",
    name: "Popular Now",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    musicList: mockMusPlaylist1,
  ),
  Playlist(
    image:
        "https://pbs.twimg.com/profile_images/1024663409349062656/a4pyiAGm.jpg",
    name: "Like A Boss !",
    description:
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
    musicList: mockMusPlaylist2,
  ),
  Playlist(
    image: "https://m.media-amazon.com/images/I/714BUqWE34L._SL1500_.jpg",
    name: "Cold Fire",
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    musicList: mockMusPrep,
  ),
  Playlist(
    image: "https://i.ytimg.com/vi/W3JJxS0gNkE/maxresdefault.jpg",
    name: "The 1975",
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    musicList: mockMus1975,
  )
];
