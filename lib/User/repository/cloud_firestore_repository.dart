import 'package:flutter/material.dart';
import 'package:platzitrips/User/model/user.dart';
import 'package:platzitrips/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);
}