import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BikeRentMtyFirebaseUser {
  BikeRentMtyFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BikeRentMtyFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BikeRentMtyFirebaseUser> bikeRentMtyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BikeRentMtyFirebaseUser>(
      (user) {
        currentUser = BikeRentMtyFirebaseUser(user);
        return currentUser!;
      },
    );
