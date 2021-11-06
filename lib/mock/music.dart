import 'package:dt_app/models/models.dart';
import 'package:flutter/material.dart';

//mockAllMusData to use mock all music list
final List<MusicData> mockAllMusData = [
  MusicData(
    title: "If you shy (Let me knows)",
    artist: "The 1975",
    artistID: "1",
    image:
        "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    music: "musics/ifyoushyletmeknow.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Cheapest Flight",
    artist: "PERP",
    artistID: "2",
    image:
        "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
    music: "musics/prepcheapestflight.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.lightBlue,
  ),
  MusicData(
    title: "Don't Bring Me Down",
    artist: "PERP",
    artistID: "2",
    image: "https://i1.sndcdn.com/artworks-000305529183-wswyut-t500x500.jpg",
    music: "musics/prepdontbringmedown.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.orange,
  ),
  MusicData(
    title: "Don't Look Back",
    artist: "PERP feat. Shownu & So!YoON!",
    artistID: "2",
    image: "https://i.ytimg.com/vi/GQGYUm1wtZA/maxresdefault.jpg",
    music: "musics/prepdontlookback.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.purple,
  ),
  MusicData(
    title: "Young Japaness",
    artist: "OKAMOTO",
    artistID: "3",
    image: "https://i.ytimg.com/vi/qRrwK84G3fg/maxresdefault.jpg",
    music: "musics/youngjapaness.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.red,
  ),
  MusicData(
    title: "Shivers",
    artist: "Ed Sheeran",
    artistID: "4",
    image: "https://i.ytimg.com/vi/z2_Lrg6rRks/maxresdefault.jpg",
    music: "musics/shivers.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.yellow,
  ),
];

//mockMusPrep All music of PREP Artist
final List<MusicData> mockMusPrep = [
  MusicData(
    title: "Cheapest Flight",
    artist: "PERP",
    artistID: "2",
    image:
        "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
    music: "musics/prepcheapestflight.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.lightBlue,
  ),
  MusicData(
    title: "Don't Bring Me Down",
    artist: "PERP",
    artistID: "2",
    image: "https://i1.sndcdn.com/artworks-000305529183-wswyut-t500x500.jpg",
    music: "musics/prepdontbringmedown.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.orange,
  ),
  MusicData(
    title: "Don't Look Back feat. Shownu & So!YoON!",
    artist: "PERP",
    artistID: "2",
    image: "https://i.ytimg.com/vi/GQGYUm1wtZA/maxresdefault.jpg",
    music: "musics/prepdontlookback.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.purple,
  ),
];

//mockMus1975 All music of The 1975 Artist
final List<MusicData> mockMus1975 = [
  MusicData(
    title: "If you shy (Let me knows)",
    artist: "The 1975",
    artistID: "1",
    image:
        "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    music: "musics/ifyoushyletmeknow.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];

//mockMusOKAMOTO All music of OKAMOTO Artist
final List<MusicData> mockMusOKAMOTO = [
  MusicData(
    title: "Young Japaness",
    artist: "OKAMOTO",
    artistID: "3",
    image: "https://i.ytimg.com/vi/qRrwK84G3fg/maxresdefault.jpg",
    music: "musics/youngjapaness.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.red,
  ),
];

//mockMusED All music of ED Sheeran Artist
final List<MusicData> mockMusED = [
  MusicData(
    title: "Shivers",
    artist: "Ed Sheeran",
    artistID: "4",
    image: "https://i.ytimg.com/vi/z2_Lrg6rRks/maxresdefault.jpg",
    music: "musics/shivers.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.yellow,
  ),
];

//mockMusFav mock data for Favorite
final List<MusicData> mockMusFav = [
  MusicData(
    title: "Shivers",
    artist: "Ed Sheeran",
    artistID: "4",
    image: "https://i.ytimg.com/vi/z2_Lrg6rRks/maxresdefault.jpg",
    music: "musics/shivers.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.yellow,
  ),
  MusicData(
    title: "If you shy (Let me knows)",
    artist: "The 1975",
    artistID: "1",
    image:
        "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    music: "musics/ifyoushyletmeknow.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Young Japaness",
    artist: "OKAMOTO",
    artistID: "3",
    image: "https://i.ytimg.com/vi/qRrwK84G3fg/maxresdefault.jpg",
    music: "musics/youngjapaness.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.red,
  ),
];

//mockMusPlaylist1 mock data for Playlist 1
final List<MusicData> mockMusPlaylist1 = [
  MusicData(
    title: "If you shy (Let me knows)",
    artist: "The 1975",
    artistID: "1",
    image:
        "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    music: "musics/ifyoushyletmeknow.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Cheapest Flight",
    artist: "PERP",
    artistID: "2",
    image:
        "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
    music: "musics/prepcheapestflight.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.lightBlue,
  ),
  MusicData(
    title: "Don't Bring Me Down",
    artist: "PERP",
    artistID: "2",
    image: "https://i1.sndcdn.com/artworks-000305529183-wswyut-t500x500.jpg",
    music: "musics/prepdontbringmedown.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.orange,
  ),
  MusicData(
    title: "Don't Look Back feat. Shownu & So!YoON!",
    artist: "PERP",
    artistID: "2",
    image: "https://i.ytimg.com/vi/GQGYUm1wtZA/maxresdefault.jpg",
    music: "musics/prepdontlookback.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.purple,
  ),
];

//mockMusPlaylist2 mock data for Playlist 2
final List<MusicData> mockMusPlaylist2 = [
  MusicData(
    title: "If you shy (Let me knows)",
    artist: "The 1975",
    artistID: "1",
    image:
        "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    music: "musics/ifyoushyletmeknow.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Cheapest Flight",
    artist: "PERP",
    artistID: "2",
    image:
        "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
    music: "musics/prepcheapestflight.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    color: Colors.lightBlue,
  ),
];
