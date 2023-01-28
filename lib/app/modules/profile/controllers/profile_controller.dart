import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

   Future<void> googlesignIn() async{
    final googlesignIn =GoogleSignIn();
    final googleAccount = googlesignIn.signIn();

    if(googleAccount != null){
      try{

      }on FirebaseException catch(e){

      }catch(e){

      }finally{
        
      }
    }
   }
}
