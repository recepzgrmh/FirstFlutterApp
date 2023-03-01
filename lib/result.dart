import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int sonuc;

  final Function reset;

  String get sonucGetter {
    var metin = '';

    if (sonuc == 10) {
      metin = 'Congurtulations!';
    } else if (sonuc >= 8 && sonuc < 10) {
      metin = 'Well Done!';
    } else if (sonuc >= 5 && sonuc < 8) {
      metin = 'You Can Do Better';
    } else {
      metin = 'Go and Learn Something !';
    }
    return metin;
  }

  Result(this.sonuc, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            sonucGetter + "\nTotal Skor: " + sonuc.toString() + "/10",
            style: TextStyle(fontSize: 26),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: reset, child: Text("Restart"))
        ],
      ),
    );
  }
}
