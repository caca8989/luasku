import 'package:flutter/material.dart';

class DeveloperProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Developer')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.white,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView( // Added SingleChildScrollView to prevent overflow
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.green[600], size: 30),
                        SizedBox(width: 10),
                        Text(
                          'Profil Developer',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[600],
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.green[300]),
                    SizedBox(height: 10),
                    _buildProfileInfo('Nama:', 'Nur Salsabila Rahmah'),
                    _buildProfileInfo('NIM:', '2310020155'),
                    _buildProfileInfo('Kelas:', 'SI 5A NR BJM'),
                    _buildProfileInfo('Kontak:', '083155823116'),
                    _buildProfileInfo('Alamat:', 'JL Cempaka Raya Wildan Sari 3 Blok 6 RT42 RW03 No219'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 10),
          Expanded( // Wrap the text in Expanded widget
            child: Text(value, overflow: TextOverflow.ellipsis), // Use ellipsis if the text overflows
          ),
        ],
      ),
    );
  }
}