

import 'package:burc/pages/burc_listesi.dart';
import 'package:burc/pages/ruya_yorum.dart';
import 'package:flutter/material.dart';

import 'daily_tarot.dart';
import 'kurabiye_falı.dart';


class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
  backgroundColor: Colors.deepPurple[200],
 
  body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 90),
      Text(
        "Bu gün ne yapmak istersin?",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          fontFamily: 'Play',
        ),
      ),
      SizedBox(height: 40),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  // Günlük Tarot sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DailyTarotScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'images/fal.png',
                        width: 160,
                        height: 160,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Günlük Tarot Falı',
                      style: TextStyle(
                        fontFamily: 'Play',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Burç Yorumları sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BurcListesi(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'images/burc.png',
                        width: 160,
                        height: 160,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Burç Yorumu',
                      style: TextStyle(
                        fontFamily: 'Play',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20), // İki grup arasına boşluk eklemek için
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  // Rüya Yorumları sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DreamInterpretationScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'images/ruyayorum.png',
                        width: 160,
                        height: 160,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Rüya Yorumları',
                      style: TextStyle(
                        fontFamily: 'Play',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  // Kurabiye Falı sayfasına yönlendirme
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CookieFortuneScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'images/kurabiye.png',
                        width: 160,
                        height: 160,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Kurabiye Falı',
                      style: TextStyle(
                        fontFamily: 'Play',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
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