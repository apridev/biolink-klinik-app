import 'package:biolink_klinik_app/template.dart';
import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {

  String gambar;
  String namaKategori;

  CategoriesTile({ this.gambar, this.namaKategori});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: primaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                gambar,
                width: 28,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          namaKategori,
          style: textPrimaryStyle.copyWith(fontSize: 12, fontWeight: medium),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
