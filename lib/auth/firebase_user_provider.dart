import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ProtocrawlFirebaseUser {
  ProtocrawlFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ProtocrawlFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ProtocrawlFirebaseUser> protocrawlFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ProtocrawlFirebaseUser>(
      (user) {
        currentUser = ProtocrawlFirebaseUser(user);
        return currentUser!;
      },
    );
