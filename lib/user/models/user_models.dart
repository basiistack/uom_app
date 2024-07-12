import 'package:firebase_database/firebase_database.dart';

class UserModel {
  String? name;
  String? id;
  String? email;
  String? phone;
  String? university_id;

  UserModel({this.name, this.id, this.email, this.phone, this.university_id});

  UserModel.fromSnapshot(DataSnapshot snap) {
    name = (snap.value as dynamic)["name"];
    id = snap.key;
    email = (snap.value as dynamic)["email"];
    phone = (snap.value as dynamic)["phone"];
    university_id = (snap.value as dynamic)["university_id"];
  }
}
