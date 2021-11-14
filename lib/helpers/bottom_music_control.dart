import 'package:auto_size_text/auto_size_text.dart';
import 'package:dt_app/mock/home.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class BottomMusicControl extends StatefulWidget {
  final BuildContext context;

  const BottomMusicControl({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  _BottomMusicControlState createState() => _BottomMusicControlState();
}

class _BottomMusicControlState extends State<BottomMusicControl> {
  @override
  Widget build(BuildContext ctx) {
    double _width = MediaQuery.of(widget.context).size.width;

    return Container(
      width: _width / 1.10,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      image: AssetImage(blackPlaceholder),
                      fit: BoxFit.cover,
                    ),
                    //FIXME
                    // image: const DecorationImage(
                    //   image: NetworkImage(
                    //       "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w"),
                    //   fit: BoxFit.cover,
                    // ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              sizeBoxs10,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  width: _width / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 200,
                        child: AutoSizeText(
                          "work in progress",
                          maxLines: 1,
                          minFontSize: 10,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: AutoSizeText(
                          "work in progress",
                          maxLines: 1,
                          minFontSize: 5,
                          overflow: TextOverflow.ellipsis,
                          style: cap,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: IconButton(
                    icon: const Icon(FeatherIcons.skipBack),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: IconButton(
                    icon: const Icon(FeatherIcons.play),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: IconButton(
                    splashColor: Colors.red,
                    icon: const Icon(FeatherIcons.skipForward),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
