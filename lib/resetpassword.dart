import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndn_database_testing_demo/sharing/textfield.dart';
import 'package:ndn_database_testing_demo/sharing/tombol.dart';

class resetPasswordPage extends StatefulWidget {
  const resetPasswordPage({super.key});

  @override
  State<resetPasswordPage> createState() => _resetPasswordPageState();
}

class _resetPasswordPageState extends State<resetPasswordPage> {
  final _emailController = TextEditingController();

  //todo: Reset password
  Future resetMyPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                'Berhasil Reset Password, silahkan cek email!',
                style: GoogleFonts.nunito(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff03265B),
        title: Text(
          'NDN E-HEALTH DATABASE',
          style: GoogleFonts.nunito(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Silahkan Masukkan Email yang ingin direset Passwordnya',
            textAlign: TextAlign.center,
            style:
                GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          ShareTextField(
              controller: _emailController,
              hideText: false,
              hintText: 'Masukkan Email'),
          TombolShare(
              tekanTombol: resetMyPassword, tekstombol: 'RESET PASSWORD')
        ],
      ),
    );
  }
}
