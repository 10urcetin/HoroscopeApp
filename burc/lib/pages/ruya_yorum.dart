import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DreamInterpretationScreen extends StatefulWidget {
  @override
  _DreamInterpretationScreenState createState() =>
      _DreamInterpretationScreenState();
}

class _DreamInterpretationScreenState
    extends State<DreamInterpretationScreen> {
  String dreamInterpretation = ""; // Rüya yorumu burada tutulacak
  TextEditingController _searchController = TextEditingController();

  /* Future<void> fetchDreamInterpretation(String dream) async {
  final response = await http.get(
    Uri.parse('https://4d-dream-dictionary.p.rapidapi.com/get_dream_number/$dream/en/'),
    headers: {
      'X-RapidAPI-Key':
          '2aceb33c23msh0502cf73654a7adp1fa5aejsn27d0d8fbc30f',
    },
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    setState(() {
      dreamInterpretation = data['dream_interpretation'];
    });
  } else {
    throw Exception('Failed to load dream interpretation');
  }
} */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rüya Yorumları'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Rüya Kelimesi Girin',
                suffixIcon: IconButton(
                  onPressed: () {
                    // fetchDreamInterpretation(_searchController.text);
                  },
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // fetchDreamInterpretation(_searchController.text);
            },
            child: Text('Rüya Yorumu Getir'),
          ),
          SizedBox(height: 16),
          Text(
            dreamInterpretation,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
