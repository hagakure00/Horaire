import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:horaire/Models/HoraireModel.dart';




  // recuperer utilisateur
  Future<String> getCurrentUID() async {
    String uid =  (FirebaseAuth.instance.currentUser!).uid;
    if (kDebugMode) {
      print(uid);
    }
    return uid;
  }


// Ajouter une operation
  Future createHoraire(Horaire horaire) async {
    String uid =  (FirebaseAuth.instance.currentUser!).uid;
    final docHoraire = FirebaseFirestore.instance.collection('Users').doc(uid).collection('Horaire').doc();
    horaire.id = docHoraire.id;
    final json = horaire.toMap();
    await docHoraire.set(json);
  }

// Editer une operation
Future editHoraire(Horaire horaire) async {
  String uid =  (FirebaseAuth.instance.currentUser!).uid;
  FirebaseFirestore.instance.collection('Users').doc(uid).collection('Horaire')
      .doc(horaire.id).update(horaire.toMap());
}

// afficher liste operation
  Stream<List<Horaire>> readHoraire() {
    String uid = (FirebaseAuth.instance.currentUser!).uid;
    if (kDebugMode) {
      print(uid);
    }
     return FirebaseFirestore.instance.collection('Users').doc(uid).collection('Horaire').orderBy("date", descending: true)
          .snapshots().map((snapshot) => snapshot.docs.map((doc) =>
          Horaire.fromJson(doc.data(),doc.id)).toList());
  }

// supprimer operation
  Future deleteHoraire(Horaire horaire) async {
    String uid = (FirebaseAuth.instance.currentUser!).uid;
    FirebaseFirestore.instance.collection('Users').doc(uid).collection('Horaire').doc(horaire.id).delete();
  }


