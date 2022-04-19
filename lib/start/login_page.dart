import 'package:biolink_klinik_app/start/register_page.dart';
import 'package:biolink_klinik_app/template.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String valueChoose;
  List listItem = ["Bahasa Indonesia",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Center(
            child: Image.asset(
              'assets/img/logo-biolink-login-register.png',
              width: 250,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: Container(
                height: 40,
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: inputFormColor),
                    borderRadius: BorderRadius.circular(12)),
                child: DropdownButton(
                  hint: Text(
                    'Pilih Bahasa',
                    style: textSubtitleLogin.copyWith(
                        fontSize: 14, fontWeight: reguler),
                  ),
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  isExpanded: true,
                  value: valueChoose,
                  underline: SizedBox(),
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose = newValue;
                    });
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(
                        valueItem,
                        style: textSubtitleLogin.copyWith(
                            fontSize: 14, fontWeight: reguler),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 50, left: defaultMargin, right: defaultMargin),
            child: Text(
              'Nomor Telpon',
              style:
                  textPrimaryStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 20, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 62,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1, color: textPrimaryColor),
                  )),
                  child: Text(
                    '+ 62',
                    style: textPrimaryStyle.copyWith(
                        fontSize: 24, fontWeight: medium),
                  ),
                ),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1, color: textPrimaryColor),
                  )),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: inputTextColor,
                    style: textPrimaryStyle.copyWith(
                        fontSize: 24, fontWeight: medium),
                    decoration: InputDecoration.collapsed(
                      hintText: '',
                      hintStyle: textPrimaryStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                  ),
                ),
              ],
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
              onPressed: () {},
              child: Text(
                'Masuk',
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
                  'Belum punya akun?',
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
                            builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      'Daftar Akun',
                      style: secondaryTextColor.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
