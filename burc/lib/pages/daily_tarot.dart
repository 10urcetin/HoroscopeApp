import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DailyTarotScreen extends StatefulWidget {
  @override
  _DailyTarotScreenState createState() => _DailyTarotScreenState();
}

class _DailyTarotScreenState extends State<DailyTarotScreen> {
  String dailyTarotMessage = ""; // Günlük tarot mesajı burada tutulacak

  /* Future<void> fetchDailyTarot() async {
    final response = await http.post(
      Uri.parse('https://daily-tarot.p.rapidapi.com/api/1.0/get_daily_tarot.php'),
      headers: {
        'content-type': 'application/x-www-form-urlencoded',
        'X-RapidAPI-Key': '2aceb33c23msh0502cf73654a7adp1fa5aejsn27d0d8fbc30f',
        'X-RapidAPI-Host': 'daily-tarot.p.rapidapi.com',
      },
      body: {
        'api_key': 'Your Api Key', // Değiştirilmesi gereken yer 
      },
    );

    if (response.statusCode == 200) {
      setState(() {
        dailyTarotMessage = response.body;
      });
    } else {
      setState(() {
        dailyTarotMessage = 'Failed to fetch daily tarot';
      });
    }
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Tarot'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dailyTarotMessage,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
               // fetchDailyTarot();
              },
              child: Text('Get Daily Tarot'),
            ),
          ],
        ),
      ),
    );
  }
}