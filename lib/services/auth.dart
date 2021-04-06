import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User get currentUser;
  Stream<User> authStateChanges();
  Future<User> signInAnonymously();
  Future<void> signOut();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<User> createEmailAndPassword(String email, String password);
}

class Auth implements AuthBase {
  final _fireBaseAuth = FirebaseAuth.instance;

  @override
  Stream<User> authStateChanges() => _fireBaseAuth.authStateChanges();

  @override
  User get currentUser => _fireBaseAuth.currentUser;

  @override
  Future<User> signInAnonymously() async {
    final userCredential = await _fireBaseAuth.signInAnonymously();
    return userCredential.user;
  }

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    final userCredential = await _fireBaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userCredential.user;
  }

  @override
  Future<User> createEmailAndPassword(String email, String password) async {
    final userCredential = await _fireBaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userCredential.user;
  }

  @override
  Future<void> signOut() async {
    await _fireBaseAuth.signOut();
  }
}
