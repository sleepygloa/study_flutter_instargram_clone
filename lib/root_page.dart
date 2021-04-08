import 'package:flutter/material.dart';
import 'package:flutter_instargram_clone/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'tab_page.dart';

class RootPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return StreamBuilder<FirebaseUser>(
    stream: FirebaseAuth.instance.onAuthStateChanged,
    builder:(BuildContext context, AsyncSnapshot snapshot){
      if(snapshot.hasData){
        return TabPage(snapshot.data);
      }else{
        return LoginPage();
      }
    }
  );
  }
}