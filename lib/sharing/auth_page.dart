import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ndn_database_testing_demo/Daftar.dart';
import 'package:ndn_database_testing_demo/homepage.dart';
import 'package:ndn_database_testing_demo/loginNDN.dart';
import 'package:ndn_database_testing_demo/togglePage.dart';

class HalamanAuth extends StatelessWidget {
  const HalamanAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NdnHomepage();
          } else {
            return DaftarOrLoginPage();
          }
        },
      ),
    );
  }
}
