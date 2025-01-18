import 'package:flutter/material.dart';

class CircleAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController jariJariController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Luas Lingkaran'),
        backgroundColor: Color(0xFF81C784), // Light Green
      ),
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
              child: Column(
                children: [
                  Text(
                    'Hitung Luas Lingkaran',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[600],
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTextField(jariJariController, 'Jari-jari'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[300],  // Corrected: backgroundColor instead of primary
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      final jariJari = double.tryParse(jariJariController.text);

                      if (jariJari != null) {
                        double phi = (jariJari % 7 == 0) ? 22 / 7 : 3.14;
                        final luas = phi * jariJari * jariJari;
                        _showResultDialog(context, 'Luas Lingkaran: $luas');
                      } else {
                        _showResultDialog(context, 'Mohon masukkan angka yang valid.');
                      }
                    },
                    child: Text('Hitung', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }

  void _showResultDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Hasil Perhitungan'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}