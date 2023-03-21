import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RidesFirebaseUser {
  RidesFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

RidesFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RidesFirebaseUser> ridesFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RidesFirebaseUser>(
      (user) {
        currentUser = RidesFirebaseUser(user);
        return currentUser!;
      },
    );
