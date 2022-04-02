import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  // UserModel userModel = UserModel();
  final userRef = FirebaseFirestore.instance.collection("users");

  AuthenticationService(this._firebaseAuth);

// managing the user state via stream.
// stream provides an immediate event of
// the user's current authentication state,
// and then provides subsequent events whenever
// the authentication state changes.
  // Stream<User>? get authStateChanges => _firebaseAuth.authStateChanges();

//1
  // Future<String> signIn({String email, String password}) async {
  //   try {
  //     await _firebaseAuth.signInWithEmailAndPassword(
  //         email: email, password: password);

  //     return "Signed In";
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       return "No user found for that email.";
  //     } else if (e.code == 'wrong-password') {
  //       return "Wrong password provided for that user.";
  //     } else {
  //       return "Something Went Wrong.";
  //     }
  //   }
  // }

//2
  signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "The password provided is too weak.";
      } else if (e.code == 'email-already-in-use') {
        return "The account already exists for that email.";
      } else {
        return "Something Went Wrong.";
      }
    } catch (e) {
      print(e);
    }
  }

//3
  Future<void> addUserToDB(
      {required String uid,
      required String username,
      required String email,
      required DateTime timestamp}) async {
    dynamic userModel = UserModel(
        uid: uid, username: username, email: email, timestamp: timestamp);

    await userRef.doc(uid).set(userModel.toMap(userModel));
  }

//4
  // Future<UserModel> getUserFromDB({String uid}) async {
  //   final DocumentSnapshot doc = await userRef.document(uid).get();

  //   //print(doc.data());

  //   return UserModel.fromMap(doc.data());
  // }

//5
  // Future<void> signOut() async {
  //   await _firebaseAuth.signOut();
  // }
}

class UserModel {
  String email;
  String uid;
  String username;
  DateTime timestamp;

  UserModel(
      {required this.email,
      required this.uid,
      required this.username,
      required this.timestamp});

  Map toMap(UserModel user) {
    var data = Map<String, dynamic>();

    data["uid"] = user.uid;
    data["username"] = user.username;
    data["email"] = user.email;
    data["timestamp"] = user.timestamp;

    return data;
  }

  // UserModel.fromMap(Map<String, dynamic>  mapData) {
  //   this.uid = mapData["uid"];
  //   this.username = mapData["username"];
  //   this.email = mapData["email"];
  // }
}
