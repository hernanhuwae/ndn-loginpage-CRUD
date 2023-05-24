import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NdnHomepage extends StatefulWidget {
  const NdnHomepage({super.key});

  @override
  State<NdnHomepage> createState() => _NdnHomepageState();
}

class _NdnHomepageState extends State<NdnHomepage> {
  final User = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login sebagai :' + User.email!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            //TODO: Buat sign Out
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text('Keluar'),
            ),
          ],
        ),
      ),
    );
  }
}
