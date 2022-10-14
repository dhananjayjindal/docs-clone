import 'package:google_docs_clone/export.dart';

final authRepositoryProvider = AuthRepository();

class AuthRepository {
  final GoogleSignIn _googleSignIn;

  AuthRepository({required GoogleSignIn googleSignIn}): _googleSignIn = googleSignIn;

  void signinWithGoogle()async {
    try{
      final user = await _googleSignIn.signIn();
      if (user!=null){
        print(user.email);
      }
    }catch(e){
      print(e);
    }
  }

}
