import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzitrips/User/model/user.dart';

class CloudFirestoreAPI {

  final String USERS = "users";
  final String PLACE = "places";

  final Firestore _db = Firestore.instance;

  void updateUserData (User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
  }
}