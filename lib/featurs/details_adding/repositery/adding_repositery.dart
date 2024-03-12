import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/cor/provider/firebase_provider.dart';
import 'package:crud/models/user_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
final addingrepositeryprovider= Provider((ref) => addingrepositery(firestore: ref.watch(firestoreprovider)));
class addingrepositery{
  final FirebaseFirestore _firestore;
  addingrepositery({
    required FirebaseFirestore firestore}):_firestore=firestore;
  CollectionReference get _users=>_firestore.collection("users");
  add(name,email,password){
    Usermodel userdata=Usermodel(name: name, password: password, email: email);
    _users.add(userdata.toMap());
  }
}