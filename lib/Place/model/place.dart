import 'package:flutter/material.dart';
import 'package:platzitrips/User/model/user.dart';

class Place {
  String id;
  String name;
  String description;
  String uriImages;
  int  likes;
  User userOwner;

  Place({
    Key key,
    @required this.name,
    @required this.description,
    @required this.uriImages,
    this.likes,
    @required this.userOwner,
  });
}