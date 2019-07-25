import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzitrips/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  // FLujo de datos - Streams
  // Streams - Firebase
  // StreamController

  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  //Caso de uso
  // 1. - Sign in a la aplicación Google
  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {

  }
}