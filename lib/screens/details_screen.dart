import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String id;
  const DetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details ID: $id')),
      body: Center(child: Text('Details for item $id')),
    );
  }
}
