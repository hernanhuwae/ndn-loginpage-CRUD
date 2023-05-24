import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndn_database_testing_demo/resetpassword.dart';
import 'package:ndn_database_testing_demo/sharing/textfield.dart';
import 'package:ndn_database_testing_demo/sharing/tombol.dart';

class loginPageNdn extends StatefulWidget {
  final VoidCallback showDaftarPage;
  const loginPageNdn({super.key, required this.showDaftarPage});

  @override
  State<loginPageNdn> createState() => _loginPageNdnState();
}

class _loginPageNdnState extends State<loginPageNdn> {
  //todo: Buat Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //TODO:Buat Sign In
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  //todo: Dispose buat pembuangan dan Manajemen Memori
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03265B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('foto/ndn.png'))),
            ),
            Text(
              'NDN E-HEALTH',
              style: GoogleFonts.nunito(
                fontSize: 32,
                color: Color(0xffFFC045),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Pendeteksi Kanker Kulit',
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    'LOGIN',
                    style: GoogleFonts.nunito(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ShareTextField(
              controller: _emailController,
              hideText: false,
              hintText: 'Email',
            ),
            SizedBox(
              height: 30,
            ),
            ShareTextField(
              controller: _passwordController,
              hideText: true,
              hintText: 'Password',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return resetPasswordPage();
                      }));
                    },
                    child: Text('Reset Password',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            TombolShare(tekanTombol: signIn, tekstombol: 'MASUK'),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Belum Daftar?',
                    style:
                        GoogleFonts.nunito(fontSize: 14, color: Colors.white)),
                SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: widget.showDaftarPage,
                  child: Text('Daftarkan',
                      style: GoogleFonts.nunito(
                          fontSize: 15,
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
