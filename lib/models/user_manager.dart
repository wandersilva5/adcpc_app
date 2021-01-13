import 'package:adcpc/helpers/firebase_errors.dart';
import 'package:adcpc/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class UserManager extends ChangeNotifier {
  UserManager() {
    _loadCurrentUser();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseUser user;

  bool loading = false;

  Future<void> signIn({User user, Function onfail, Function onSuccess}) async {
    setLoading(true);

    try {
      final AuthResult result = await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);
      this.user = result.user;
      onSuccess();
    } on PlatformException catch (e) {
      onfail(getErrorString(e.code));
    }

    setLoading(false);
  }

  void setLoading(bool value) {
    loading = value;
  }

  Future<void> _loadCurrentUser() async {
    final FirebaseUser currentUser = await auth.currentUser();

    if (currentUser != null) {
      user = currentUser;
      print(user.uid);
    }
    notifyListeners();
  }
}
