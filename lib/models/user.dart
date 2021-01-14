import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  User({
    this.email,
    this.password,
    this.name,
    this.sobrenome,
    this.cargo,
    this.dataNascimento,
    this.dizimista,
    this.filiacao,
    this.membro,
  });

  User.fromDocument(DocumentSnapshot document) {
    id = document.documentID;
    name = document.data['nome'] as String;
    email = document.data['email'] as String;
    cargo = document.data['cargo'] as String;
    dataNascimento = document.data['dataNascimento'] as String;
    dizimista = document.data['dizimista'] as bool;
    filiacao = document.data['filiacao'] as String;
    membro = document.data['membro'] as String;
    sobrenome = document.data['sobrenome'] as String;
  }
  bool dizimista;

  String id,
      name,
      sobrenome,
      email,
      password,
      cargo,
      filiacao,
      membro,
      dataNascimento;

  DocumentReference get firestoreRef =>
      Firestore.instance.document('/usuarios/$id');

  Future<void> saveData() async {
    await firestoreRef.setData(toMap());
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email};
  }
}
