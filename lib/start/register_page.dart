import 'package:biolink_klinik_app/start/kode_otp.dart';
import 'package:biolink_klinik_app/start/login_page.dart';
import 'package:biolink_klinik_app/template.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/img/logo-biolink-login-register.png',
                width: 250,
              ),
              Text(
                  'Untuk bisa mengakses aplikasi ini kamu \nharus daftar terlebih dahulu!',
                  style: textInputStyle.copyWith(
                      fontSize: 14, fontWeight: reguler),
                  textAlign: TextAlign.center)
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: 70, left: defaultMargin, right: defaultMargin),
            child: Text(
              'Nama Pengguna',
              style:
                  textPrimaryStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ),
          Container(
            width: defaultMargin,
            height: 50,
            margin: EdgeInsets.only(top: 15, left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: inputTextColor2
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/user-icon-register.png',width: 24,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      cursorColor: inputTextColor,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan Nama Pengguna'),
                        style: textSubtitleLogin.copyWith(fontSize: 14, fontWeight: reguler),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 15, left: defaultMargin, right: defaultMargin),
            child: Text(
              'Nomor Telpon',
              style:
                  textPrimaryStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ),
          Container(
            width: defaultMargin,
            height: 50,
            margin: EdgeInsets.only(top: 15, left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: inputTextColor2
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/phone-icon-register.png',width: 24,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      cursorColor: inputTextColor,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan Nomor Telpon'),
                        style: textSubtitleLogin.copyWith(fontSize: 14, fontWeight: reguler),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(
                top: 50, left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: primaryColor),
            child: TextButton(
              onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KodeOtp()),
                      );
              },
              child: Text(
                'Daftar',
                style:
                    textPrimaryStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya Akun?',
                  style: textPrimaryStyle.copyWith(
                      fontSize: 14, fontWeight: reguler),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Masuk Sekarang',
                      style: secondaryTextColor.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),
        ],
      ),
    );
  }
}
