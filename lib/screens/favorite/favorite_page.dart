import 'package:dt_app/components/components.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    List<MusicData> mockMusicData = [
      MusicData(
        title: "if you shy (let me knows)",
        artist: "1975",
        image:
            "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
        musicPlay: "musics/testmusic.mp3",
        dataArtist: "test",
        lyrics: "test lyrics",
      ),
      MusicData(
        title: "cheapest flight",
        artist: "PERP",
        image:
            "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
        musicPlay: "musics/preptestmusic.mp3",
        dataArtist: "test",
        lyrics:
            " test lyrics iudbiuhsdojgbiusdggf kjbh guy guy fyty fytdt dtfthfyfhjhhfhjgf jhf jghf jgf jf jhf jhdj fjg djg djg djy djd j dtydjyttvytgvtufc tyr ffc vtrvytguv trctc crtfc v756 fvyt fvfrtv r6trccv7trcr vr7tvtc7 c86tf 6tfv i6tf6 tiusigjipsdhgjsh gkdu gfuydhjgf iudg iufg iu igdfighi duhfgiudhfgiu hdfiug hiudfhg iudfhgiuf diughf iudhigufh diughdiufhgiudfhgufdhgudhfuigdhfh9uhgu9fdhgui dhfuigh uidfh guidf iguiiy gyf ytu uytf uytf fytdy tsyt dduy fl kgvghf vku yfvh bv kh jv bnvutf vv ytdftyf ihgfv hgfv tyfgt fgjf  jtygf yjgtf jygtf tyg ftygf ty tg uj t yt yj oihsdogs8dgfyitsfuyg8surytto8sueryhuitseyuirgttuisgrtiusegriutgseiurhtiusheiusthuirehtiuserhtiueghrtuihersuithrueihtuiershtiurehtuisheriuthuisehrtiuhertuiheurhtuherutiheriugtsiuerghtgiuoegrtyusgertyutgt87ayetgr87uswegyutgsuergtuirhiugbdifjgnuifhguidhgiudfhgfbguyv gsy gydyfg syeeg ysdgfuys bfyesg fuysygfuyeg yusgefofgyue sgiuyfg esuygfyu esgyufg syuegyufgysg efygyi gsyige fyseg ygsyifyg ysegof gseyf gsy g",
      ),
    ];

    AppBar _appbar(BuildContext context) {
      return HomeAppBar(
        context: context,
        title: "Favorite Page",
        style: head3,
        iconButton: [
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.chevronLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    }

    return Body(
      context: context,
      haveFAB: true,
      appBar: _appbar(context),
      body: [
        MusicCard(
          height: _height,
          width: _width,
          music: mockMusicData,
          styletitle: head4,
          stylesuptitle: head5,
        ),
      ],
    );
  }
}
