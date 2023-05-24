import 'package:flutter/material.dart';
import 'package:ndn_database_testing_demo/Daftar.dart';
import 'package:ndn_database_testing_demo/loginNDN.dart';
import 'package:ndn_database_testing_demo/main.dart';

class DaftarOrLoginPage extends StatefulWidget {
  const DaftarOrLoginPage({super.key});

  @override
  State<DaftarOrLoginPage> createState() => _DaftarOrLoginPageState();
}

class _DaftarOrLoginPageState extends State<DaftarOrLoginPage> {
  bool showLoginPage = true;
  void pindahHalaman() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      //todo: Pada showLoginPage merupakan fungsi tombol void callback loginNDN.Dart
      return loginPageNdn(
        showDaftarPage: pindahHalaman,
      );
    } else {
      //todo: Pada showRegister merupakan fungsi tombol void callback Daftar.Dart
      return daftarPage(
        showLoginPage: pindahHalaman,
      );
    }
  }
}
