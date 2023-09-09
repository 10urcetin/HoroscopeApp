import 'package:burc/pages/selection_screen.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.deepPurple[200],
  body: SafeArea(
    child: ListView(
      
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 1.0, top: 16.0, right: 16.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop(); // Geri tuşuna basıldığında önceki sayfaya dönmek için Navigator'ı kullanıyoruz
                },
              ),
              Spacer(), // Sol tarafa yaslamak için Spacer ekliyoruz
            ],
          ),
        ),
        Center(
          child: Image.asset('images/signin.png'),
        ), 

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
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
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Şifre',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
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
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Şifre Tekrar',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectionScreen()),
                 );
                  // Giriş yap butonuna basıldığında yapılacak işlemleri buraya ekleyin
                },
                child: Text('Giriş'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 227, 89, 46), // Butonun arka plan rengi
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
  }
}