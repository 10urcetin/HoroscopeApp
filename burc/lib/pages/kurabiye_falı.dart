import 'package:flutter/material.dart';

class CookieFortuneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Kurabiye Falı'),
      ),
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isCookieOpen = true;
        });

        // Delay ile mesajı göstermek için
        Future.delayed(Duration(milliseconds: 500), () {
          setState(() {
            _isMessageShown = true;
          });
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Kurabiye Falın'),
              content: Text('"Bugün şanslı günün!"'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // AlertDialog'ı kapatmak için
                  },
                  child: Text('Kapat'),
                ),
              ],
            ),
          );
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
}