import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:thap_mobile/helpers/helper.dart';
import 'package:thap_mobile/theme/constant.dart';

class ShowProblem extends StatefulWidget {
  const ShowProblem({Key? key}) : super(key: key);

  @override
  _ShowProblemState createState() => _ShowProblemState();
}

class _ShowProblemState extends State<ShowProblem> {
  @override
  Widget build(BuildContext context) {
    return Body(
      context: context,
      haveFAB: false,
      appBar: _appbar(context),
      body: [
        Container(
          width: 500,
          height: 500,
          color: Colors.grey[400],
        ),
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "Error 404",
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
}
