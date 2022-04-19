import 'package:biolink_klinik_app/template.dart';
import 'package:biolink_klinik_app/widget/cek_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KodeOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 40, left: defaultMargin, right: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons/arrow-left-icon.png',
                        width: 24,
                      ),
                    ),
                    Image.asset(
                      'assets/icons/alert-help-icon.png',
                      width: 24,
                    )
                  ],
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/img/mockup-otp.png',
                  width: 254,
                ),
              ),
              Container(
                child: Center(
                    child: Text(
                  'Cek Kode OTP',
                  style: textPrimaryStyle.copyWith(
                      fontSize: 18, fontWeight: medium),
                )),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: defaultMargin, right: defaultMargin),
                child: Center(
                    child: Text(
                  'Kami telah mengirimkan kode verifikasi \nmelalui nomor yang kamu daftarkan. Mohon \nmasukan kode dikolom berikut.',
                  style: textInputStyle.copyWith(
                      fontSize: 14, fontWeight: reguler),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 18),
                child: Center(
                  child: Text(
                    '01 : 59',
                    style: textPrimaryStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 24,
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CekKodeOtp(),
                    CekKodeOtp(),
                    CekKodeOtp(),
                    CekKodeOtp(),
                    CekKodeOtp(),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(
                        top: 50, left: defaultMargin, right: defaultMargin),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Verifikasi Kode',
                        style: textPrimaryStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(
                        top: 12, left: defaultMargin, right: defaultMargin),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: backgroundColor),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Kirim Ulang OTP',
                        style: textPrimaryStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
