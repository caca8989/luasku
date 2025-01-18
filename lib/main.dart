import 'package:flutter/material.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profil_pengembang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luasku',
      theme: ThemeData(
        primarySwatch: Colors.green,  // Green color scheme
        scaffoldBackgroundColor: Color(0xFFE8F5E9), // Light green background
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luasku'),
        backgroundColor: Color(0xFF81C784), // Light Green
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildMenuButton(
                context,
                'Luas Persegi',
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SquareAreaPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              _buildMenuButton(
                context,
                'Luas Lingkaran',
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircleAreaPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              _buildMenuButton(
                context,
                'Profil Developer',
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeveloperProfilePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String label, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[300],  // Light Green Button (use backgroundColor instead of primary)
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(vertical: 15),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}