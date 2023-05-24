import 'package:flutter/material.dart';
import 'package:ndn_database_testing_demo/loginNDN.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ndn_database_testing_demo/sharing/auth_page.dart';
import 'package:ndn_database_testing_demo/togglePage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(NdnLogin());
}

class NdnLogin extends StatelessWidget {
  const NdnLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Todo: PENTING!!! Penentu page setelah berhasil Login In atau Daftar
      home: HalamanAuth(),
    );
  }
}
