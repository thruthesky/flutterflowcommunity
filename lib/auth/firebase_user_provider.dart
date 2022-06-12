import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlutterFlowDevCommunityFirebaseUser {
  FlutterFlowDevCommunityFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FlutterFlowDevCommunityFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlutterFlowDevCommunityFirebaseUser>
    flutterFlowDevCommunityFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FlutterFlowDevCommunityFirebaseUser>(
            (user) => currentUser = FlutterFlowDevCommunityFirebaseUser(user));
