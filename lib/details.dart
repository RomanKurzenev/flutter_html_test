import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('From HTML'),
      ),
      body: Center(
        child: Text('Navigation from html code'),
      ),
    );
  }
}
