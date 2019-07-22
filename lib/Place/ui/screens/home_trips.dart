import 'package:flutter/material.dart';
import 'package:platzitrips/Place/ui/widgets/description_place.dart';
import 'package:platzitrips/Place/ui/widgets/review_list.dart';
import 'package:platzitrips/Place/ui/screens/header_appbar.dart';

class HomeTrips extends StatelessWidget {

  String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mattis ante at erat pulvinar fringilla. Donec molestie imperdiet sollicitudin. Sed lacinia, odio quis cursus laoreet, mi mi porttitor orci, hendrerit tempor nisl metus vitae tortor. Donec consectetur at libero ut tempus. Nam tincidunt dapibus arcu, eget viverra ipsum egestas quis. Mauris aliquet, ligula non ullamcorper vulputate, ante libero luctus eros, non porta erat tortor quis turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque faucibus ullamcorper eros, quis varius elit ultrices non.";

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas", 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}