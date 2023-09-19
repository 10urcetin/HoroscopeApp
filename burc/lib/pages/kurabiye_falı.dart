import 'dart:math';

import 'package:flutter/material.dart';

class CookieFortuneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      
      body: Center(
        child: CookieAnimationWidget(),
      ),
    );
  }
}

class CookieAnimationWidget extends StatefulWidget {
  @override
  _CookieAnimationWidgetState createState() => _CookieAnimationWidgetState();
}

class _CookieAnimationWidgetState extends State<CookieAnimationWidget> {
  bool _isCookieOpen = false;
  bool _isMessageShown = false;
  String _randomWish = ''; // Rastgele dileği saklamak için bir değişken

  // Yeni metot: Rastgele dileği göstermek için
  void showRandomWish(BuildContext context) {
    if (!_isMessageShown) {
      _randomWish = getRandomWish(randomWishes); // Rastgele dileği al
      setState(() {
        _isMessageShown = true;
      });

  showDialog(
  context: context,
  builder: (context) => AlertDialog(
    title: Text(''), // Boş bir metin olarak başlığı ayarlayın
    content: Container(
      padding: EdgeInsets.all(8.0),
      child: Text(
        _randomWish,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    ),
    contentPadding: EdgeInsets.all(16.0),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          'Kapat',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    ],
  ),
);

    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // InkWell'ın onTap olayını güncelleyin
      onTap: () {
        setState(() {
          _isCookieOpen = true;
        });

        // Delay ile rastgele dileği göstermek için
        Future.delayed(Duration(milliseconds: 500), () {
          showRandomWish(context); // Rastgele dileği görüntüle
        });
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: _isCookieOpen ? 320 : 160,
              height: _isCookieOpen ? 320 : 160,
              child: Image.asset(
                _isCookieOpen ? 'images/acık.png' : 'images/kapalı.png',
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
    );
  }

  // Rastgele dileği seçmek ve görüntülemek için bir işlev
  String getRandomWish(List<String> wishes) {
    final random = Random();
    final index = random.nextInt(wishes.length);
    return wishes[index];
  }

  List<String> randomWishes = [
    'Bugün şanslı günün!',
    'Büyük bir sürpriz seni bekliyor.',
    'Dostluklarını daha fazla değerlendir.',
    'Yeni insanlarla tanışmanın zamanı geldi.',
    'Yakında aşkı bulacaksın',
    'İş teklifi yolda.',
    'Bu sene derslerin biraz zorlu geçecek.',
    'Ne olursa olsun yüzün hep gülsün',
    'Üzülmek için kısa bir hayat.',
    'Hedefine odaklan.',
    'Gününü daha verimli geçirebilirsin.',
    'Biraz sosyalleşmeye ihtiyacın var gibi.',
    'Su içmeyi unutma.',
    'Hayatın sana sürprizlerle dolu olması dileğiyle.',
    'Her gün en az 15 dakika doğada yürüyüş yapmayı deneyin.',
    'Bir kitap okuyarak yeni dünyalara yolculuk yapın.',
    'Sevdiklerinizle daha fazla zaman geçirin ve onlara değer verin.',
    'Daima sağlıklı olmanı umarım.',
    'Güzel bir gelecek ve tatmin edici bir kariyer dilerim.',
    'İçindeki potansiyeli keşfetmen ve en iyisini yapman dileğiyle.',
    'Her günün bir gülümseme getirsin.',
    'Fiziksel sağlığınıza dikkat edin ve düzenli egzersiz yapın.',
    'Kendinize zaman ayırın ve kişisel gelişiminizi destekleyin.',
    'Çevrenize yardım etmek ve gönüllü çalışmalara katılmak için fırsatlar arayın.',
    'Sevdiklerinle güzel anılar biriktirmen dileğiyle.',
    'Sağlık, mutluluk ve huzur dolu bir hayat sürmeni dilerim.',
    'Her gün bir şeyler için minnettarlık ifade edin.',
    // Daha fazla dilek ekleyebilirsiniz.
  ];
}

