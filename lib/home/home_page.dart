import 'package:biolink_klinik_app/template.dart';
import 'package:biolink_klinik_app/widget/artikel_tile.dart';
import 'package:biolink_klinik_app/widget/categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  int label = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: 50, left: defaultMargin, right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: inputTextColor2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/menu-icon.png',
                          width: 22,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Lokasi Sekarang',
                        style: textPrimaryStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/pin-location.png',
                            width: 16,
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              margin: EdgeInsets.only(
                  top: 27, left: defaultMargin, right: defaultMargin),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: searchColor),
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
                        hintStyle: textInputStyle.copyWith(fontSize: 13)),
                  ))
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
                    Image.asset(
                      'assets/img/slide-one.png',
                      width: 368,
                      height: 130,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/icons/slide-icon.png',
                  width: 56,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 20, left: defaultMargin, right: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kategory',
                    style: textPrimaryStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 20, left: defaultMargin, right: defaultMargin),
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
                  top: 20, left: defaultMargin, right: defaultMargin),
              child: Column(
                children: [
                  Text(
                    'Jadwal Antrian',
                    style: textPrimaryStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
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
                vertical: 12
              ),
              width: double.infinity,
              height: 65,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pablo Amore',
                          style: textPrimaryStyle.copyWith(
                              fontSize: 14, fontWeight: medium, overflow: TextOverflow.ellipsis),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icons/calendar-icon.png',
                              width: 14,
                              color: secondaryColor,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text('Selasa, 1 Mei 2020', 
                            style: secondaryTextColor.copyWith(
                              fontSize: 10,
                              fontWeight: semiBold
                            ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Icon(Icons.access_time, 
                              color: secondaryColor, 
                              size: 15,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text('14 : 00', style: secondaryTextColor.copyWith(
                              fontSize: 10,
                              fontWeight: semiBold
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text('Segera', style: textPrimaryStyle.copyWith(
                    fontSize: 12,
                    fontWeight: medium
                  ),),
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
                  Text('Artikel Terkait', style: textPrimaryStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text('Lainnya', style: textInputStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium
                        ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: inputTextColor, size: 14,)
                      ],
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
              child: Column(
                children: [
                  ArtikelTile(
                    images: 'assets/img/artikel-one.png',
                    tittle: '9 Cara Menjaga Kesehatan Jantung yang Perlu Dilakukan Mulai Saat Ini',
                    subTittle: 'Kemenkes RI, penyakit jantung menjadi...',
                  ),
                  ArtikelTile(
                    images: 'assets/img/artikel-two.png',
                    tittle: '9 Cara Menjaga Kesehatan Jantung yang Perlu Dilakukan Mulai Saat Ini',
                    subTittle: 'Kemenkes RI, penyakit jantung menjadi...',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Image.asset(
                'assets/icons/home-icon.png', 
                height: 24,
                color: _currentIndex == 0 ? primaryColor : inputTextColor,
              ),
            ),
            label: 'Home',
            backgroundColor: primaryColor
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Image.asset(
                'assets/icons/calendar-icon.png', 
                height: 24,
                color: _currentIndex == 1 ? primaryColor : inputTextColor,
              ),
            ),
            label: 'Jadwal',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Image.asset(
                'assets/icons/message-icon.png', 
                height: 24,
                color: _currentIndex == 2 ? primaryColor : inputTextColor,
              ),
            ),
            label: 'Pesan'
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Image.asset(
                'assets/icons/user-profile-icon.png', 
                height: 24,
                color: _currentIndex == 3 ? primaryColor : inputTextColor,
              ),
            ),
            label: 'Profil',
          ),
        ],
        selectedItemColor: primaryColor,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
