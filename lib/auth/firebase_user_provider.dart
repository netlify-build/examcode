import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ExamcodexxxxFirebaseUser {
  ExamcodexxxxFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ExamcodexxxxFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ExamcodexxxxFirebaseUser> examcodexxxxFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ExamcodexxxxFirebaseUser>(
      (user) {
        currentUser = ExamcodexxxxFirebaseUser(user);
        return currentUser!;
      },
    );
