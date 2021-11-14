import 'package:dt_app/models/models.dart';
import 'package:flutter/material.dart';

//mockAllMusData to use mock all music list
final List<MusicData> mockAllMusData = [
  MusicData(
    title: "Khamen Sai Yok",
    artist: "Phraya Narit Ra Nu Wat Ti Wong",
    artistID: "1",
    image: "assets/images/musics/KhamenSaiYok.jpg",
    music: "musics/KhamenSaiYok.mp3",
    color: Colors.amber,
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Lao Charoen Si",
    artist: "ChaoPhraya Thewet WongWiwat",
    artistID: "2",
    image: "assets/images/musics/LaoCharoenSi.jpg",
    music: "musics/LaoCharoenSi.mp3",
    color: Colors.amber,
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Lao Duang Duean",
    artist: "Krom Muen Phi Chai Ma Hin Ta Ro Dom",
    artistID: "3",
    image: "assets/images/musics/LaoDuangDuean.jpg",
    music: "musics/LaoDuangDuean.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Lao KhamHom",
    artist: "Phraya Prasan Du Riya Sap",
    artistID: "4",
    image: "assets/images/musics/LaoKhamHom.jpg",
    music: "musics/LaoKhamHom.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Lao Siang Thian",
    artist: "-",
    artistID: "0",
    image: "assets/images/musics/LaoSiangThian.jpeg",
    music: "musics/LaoSiangThian.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Nang Khruan",
    artist: "-",
    artistID: "0",
    image: "assets/images/musics/NangKhruan.jpg",
    music: "musics/NangKhruan.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "RatriPradapDao",
    artist: "PhraBat SomdetPhra Pokklao Chao Yu Hua Ratchakan Thi 7",
    artistID: "5",
    image: "assets/images/musics/RatriPradapDao.jpg",
    music: "musics/RatriPradapDao.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];

//mockMusPhrayaNaritRaNuWatTiWong All music of PhrayaNaritRaNuWatTiWong Artist
final List<MusicData> mockMusPhrayaNaritRaNuWatTiWong = [
  MusicData(
    title: "Khamen Sai Yok",
    artist: "Phraya Narit Ra Nu Wat Ti Wong",
    artistID: "1",
    image: "assets/images/musics/KhamenSaiYok.jpg",
    music: "musics/KhamenSaiYok.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];

//mockMusChaoPhrayaThewetWongWiwat All music of The ChaoPhrayaThewetWongWiwat Artist
final List<MusicData> mockMusChaoPhrayaThewetWongWiwat = [
  MusicData(
    title: "Lao Charoen Si",
    artist: "ChaoPhraya Thewet WongWiwat",
    artistID: "2",
    image: "assets/images/musics/LaoCharoenSi.jpg",
    music: "musics/LaoCharoenSi.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];

//mockMusKromMuenPhiChaiMaHinTaRoDom All music of KromMuenPhiChaiMaHinTaRoDom Artist
final List<MusicData> mockMusKromMuenPhiChaiMaHinTaRoDom = [
  MusicData(
    title: "Lao Duang Duean",
    artist: "Krom Muen Phi Chai Ma Hin Ta Ro Dom",
    artistID: "3",
    image: "assets/images/musics/LaoDuangDuean.jpg",
    music: "musics/LaoDuangDuean.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];

//mockMusPhrayaPrasanDuRiyaSap All music of PhrayaPrasanDuRiyaSap Artist
final List<MusicData> mockMusPhrayaPrasanDuRiyaSap = [
  MusicData(
    title: "Lao KhamHom",
    artist: "Phraya Prasan Du Riya Sap",
    artistID: "4",
    image: "assets/images/musics/LaoKhamHom.jpg",
    music: "musics/LaoKhamHom.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];
//mockMusPhraBatSomdetPhraPokklaoChaoYuHuaRatchakanThi7 All music of PhraBatSomdetPhraPokklaoChaoYuHuaRatchakanThi7 Artist
final List<MusicData> mockMusPhraBatSomdetPhraPokklaoChaoYuHuaRatchakanThi7 = [
  MusicData(
    title: "RatriPradapDao",
    artist: "PhraBat SomdetPhra Pokklao Chao Yu Hua Ratchakan Thi 7",
    artistID: "5",
    image: "assets/images/musics/RatriPradapDao.jpg",
    music: "musics/RatriPradapDao.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];
//mockMusUnKnow All music of UnKnow Artist
final List<MusicData> mockMusUnKnow = [
  MusicData(
    title: "Lao Siang Thian",
    artist: "-",
    artistID: "0",
    image: "assets/images/musics/LaoSiangThian.jpeg",
    music: "musics/LaoSiangThian.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Nang Khruan",
    artist: "-",
    artistID: "0",
    image: "assets/images/musics/NangKhruan.jpg",
    music: "musics/NangKhruan.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];

//mockMusFav mock data for Favorite
final List<MusicData> mockMusFav = [
  MusicData(
    title: "Lao Duang Duean",
    artist: "Krom Muen Phi Chai Ma Hin Ta Ro Dom",
    artistID: "3",
    image: "assets/images/musics/LaoDuangDuean.jpg",
    music: "musics/LaoDuangDuean.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Khamen Sai Yok",
    artist: "Phraya Narit Ra Nu Wat Ti Wong",
    artistID: "1",
    image: "assets/images/musics/KhamenSaiYok.jpg",
    music: "musics/KhamenSaiYok.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
  MusicData(
    title: "Lao Charoen Si",
    artist: "ChaoPhraya Thewet WongWiwat",
    artistID: "2",
    image: "assets/images/musics/LaoCharoenSi.jpg",
    music: "musics/LaoCharoenSi.mp3",
    lyrics:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ),
];
