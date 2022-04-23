import 'package:biolink_klinik_app/template.dart';
import 'package:biolink_klinik_app/widget/categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 50, 
              left: defaultMargin, 
              right: defaultMargin
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: inputTextColor2
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/menu-icon.png', width: 22,)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text('Lokasi Sekarang', style: textPrimaryStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/pin-location.png', width: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Kalideres, Jakarta'),
                      ],
                    )
                  ],
                ),
                Image.asset('assets/img/my-profile.png', width: 50)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16
            ),
            margin: EdgeInsets.only(
              top: 27,
              left: defaultMargin,
              right: defaultMargin
            ),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: searchColor
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/search-icon.png', 
                  width: 20,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextFormField(
                    cursorColor: inputTextColor,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Cari Dokter dan cek kesehatan',
                      hintStyle: textInputStyle.copyWith(
                        fontSize: 13
                      )
                    ),
                  )
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img/slide-one.png', width: 368, height: 130,)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/icons/slide-icon.png', width: 56,)
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kategory', style: textPrimaryStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium
                ),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoriesTile(
                  gambar: 'assets/icons/cari-dokter-icon.png',
                  namaKategori: 'Cari \nDokter',
                ),
                CategoriesTile(
                  gambar: 'assets/icons/jadwal-antrian-icon.png',
                  namaKategori: 'Jadwal \nAntrian',
                ),
                CategoriesTile(
                  gambar: 'assets/icons/pesan-obat-icon.png',
                  namaKategori: 'Pesan \nObat',
                ),
                CategoriesTile(
                  gambar: 'assets/icons/artikel-kesehatan-icon.png',
                  namaKategori: 'Artikel \nKesehatan',
                ),
                CategoriesTile(
                  gambar: 'assets/icons/rumah-sakit-icon.png',
                  namaKategori: 'Rumah \nSakit',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin
            ),
            child: Column(
              children: [
                Text('Jadwal Antrian', style: textPrimaryStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium
                ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0.5,
                  blurRadius: 4, // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/img/dr-one.png',
                   width: 42,
                ),
                SizedBox(
                  width: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12
                  ),
                  child: Column(
                    children: [
                      Text('Pablo Amore', style: textPrimaryStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}