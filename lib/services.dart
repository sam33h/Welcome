import 'package:firebase_auth/firebase_auth.dart';

Future<void> signup({
  required String username,
  required String email,
  required String password,
  required String confirm,
}) async {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

  }
