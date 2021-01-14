import 'package:adcpc/helpers/firebase_errors.dart';
import 'package:adcpc/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class UserManager extends ChangeNotifier {
  UserManager() {
    _loadCurrentUser();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  final Firestore firestore = Firestore.instance;

  User user;

  bool loading = false;
  bool get isLoggedIn => user != null;

  Future<void> signIn({User user, Function onfail, Function onSuccess}) async {
    setLoading(true);

    try {
      final AuthResult result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);

      await _loadCurrentUser(firebaseUser: result.user);

      onSuccess();
    } on PlatformException catch (e) {
      onfail(getErrorString(e.code));
    }

    setLoading(false);
  }

  void signOut() {
    auth.signOut();
    user = null;
    notifyListeners();
  }

  void setLoading(bool value) {
    loading = value;
  }

  Future<void> _loadCurrentUser({FirebaseUser firebaseUser}) async {
    final FirebaseUser currentUser = firebaseUser ?? await auth.currentUser();

    if (currentUser != null) {
      final DocumentSnapshot docUser = await firestore
          .collection('usuarios')
          .document(currentUser.uid)
          .get();
      user = User.fromDocument(docUser);

      notifyListeners();
    }
  }
}
