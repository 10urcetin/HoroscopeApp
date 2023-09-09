import 'package:burc/pages/selection_screen.dart';
import 'package:burc/pages/sign_in_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _showPassword = false; 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),  
            Image.asset('images/login.png'),
            SizedBox(height: 20),
            // Email TextField with Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Yuvarlak köşeleri burada belirliyoruz
                ),
                color: Colors.blueGrey[500],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: InputBorder.none, // Card içindeki TextField sınırlarını gizliyoruz
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Şifre TextField with Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.blueGrey[500],
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    obscureText: !_showPassword, // Şifre gizleniyor veya gösteriliyor
                    decoration: InputDecoration(
                      labelText: 'Şifre',
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword; // Butona basıldığında şifrenin görünürlüğünü değiştiriyoruz
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Giriş butonuna basıldığında yapılacak işlemleri buraya ekleyin
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectionScreen()),
                 );
              },
              child: Text('Giriş'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 227, 89, 46) // Butonun arka plan rengi
                
              ),
              
            ),
            SizedBox(height: 20,),
               ElevatedButton(
              onPressed: () {
                // Giriş butonuna basıldığında yapılacak işlemleri buraya ekleyin
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                 );
              },
              child: Text('Kayıt Ol'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 227, 89, 46)  // Butonun arka plan rengi
                
              ),
              
            ),
        ],
        ),
      ),
    );

  }
}