import 'package:flutter/material.dart';
import 'package:platzitrips/Place/ui/widgets/card_image_list.dart';
import 'package:platzitrips/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack(height: 250.0),
        CardImageList()
      ],
    );
  }
}