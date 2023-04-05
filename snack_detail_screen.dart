import 'package:flutter/material.dart';
import 'snack.dart';

class SnackDetailScreen extends StatelessWidget {
  final Snack snack;

  const SnackDetailScreen({required this.snack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(snack.name),
      ),
      body: Column(
        children: [
          Image.network(snack.imageUrl),
          SizedBox(height: 16),
          Text(
            snack.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            snack.description,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
