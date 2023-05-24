import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ndn_database_testing_demo/sharing/textfield.dart';
import 'package:ndn_database_testing_demo/sharing/tombol.dart';

class daftarPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const daftarPage({super.key, required this.showLoginPage});

  @override
  State<daftarPage> createState() => _daftarPageState();
}

class _daftarPageState extends State<daftarPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _konfirmasiPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _konfirmasiPasswordController.dispose();
    super.dispose();
  }

  Future DaftarAkun() async {
    if (sinkronPassword()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
    }
  }

  //todo: Buat fungsi logic konfirmasi password pake Boolean
  bool sinkronPassword() {
    if (_konfirmasiPasswordController.text.trim() ==
        _passwordController.text.trim()) {
      return true;
    } else {
      return false;
    }
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
                    'DAFTAR',
                    style: GoogleFonts.nunito(
                      fontSize: 33,
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
              height: 30,
            ),
            ShareTextField(
              controller: _konfirmasiPasswordController,
              hideText: true,
              hintText: 'Confirm Password',
            ),
            TombolShare(tekanTombol: DaftarAkun, tekstombol: 'DAFTAR'),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sudah memiliki akun?',
                    style:
                        GoogleFonts.nunito(fontSize: 14, color: Colors.white)),
                SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: widget.showLoginPage,
                  child: Text('Login',
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
    ;
  }
}
