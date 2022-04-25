import 'package:biolink_klinik_app/template.dart';
import 'package:flutter/material.dart';

class ArtikelTile extends StatelessWidget {

  String images;
  String tittle;
  String subTittle;

  ArtikelTile({this.images, this.tittle, this.subTittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 12
      ),
      padding: EdgeInsets.only(right: 6),
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
          ]),
      child: Row(
        children: [
          Image.asset(images),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tittle,
                        style: textPrimaryStyle.copyWith(
                          fontSize: 11,
                          fontWeight: reguler,
                        ),
                      ),
                      Text(
                        subTittle,
                        style: textInputStyle.copyWith(
                            fontSize: 10,
                            fontWeight: reguler,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            '23/01/2022',
            style: textPrimaryStyle.copyWith(
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
