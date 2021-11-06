// ignore_for_file: must_be_immutable
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MusicBar extends StatefulWidget {
  BuildContext context;
  MusicBar({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  _MusicBarState createState() => _MusicBarState();
}

class _MusicBarState extends State<MusicBar> {
  @override
  Widget build(BuildContext ctx) {
    double _width = MediaQuery.of(widget.context).size.width;

    return Container(
      width: _width / 1.10,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[200],
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
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/placeholder-black.jpg",
                      ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: _width / 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AutoSizeText(
                        "work in progress",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        "work in progress",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: cap,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(FeatherIcons.skipBack),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(FeatherIcons.play),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(FeatherIcons.skipForward),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
