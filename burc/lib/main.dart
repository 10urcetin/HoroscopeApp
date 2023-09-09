import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'pages/login_page.dart';
import 'pages/burc_listesi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/splash', // Başlangıçta '/splash' yolunu atayarak SplashScreen ile başlatın
      routes: {
        '/burclistesi': (context) => BurcListesi(), // Ana sayfaya yönlendirme
        '/login': (context) => LogInPage(), // Login sayfasına yönlendirme
        '/splash': (context) => SplashScreen(), // Splash Screen sayfasına yönlendirme
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 4), () {
      // Login ekranına yönlendirme
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LogInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/giphy.gif', width: 480, height: 480),
            ),
            SizedBox(height: 20),
            Text(
              'Şansına Küs Falına Küsme',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Play',
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Version 1.1', 
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            Align( // Metni ekranın altına yerleştiren Align widget
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.0), // Yeni değer: 40 birim aşağıya al
                child: Text(
                  'GitHub: 10urcetin',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
