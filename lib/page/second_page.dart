import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veronika/provider/theme_provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark ? 'Bye world' : 'Hello world';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Veronika APP'),
      ),
      body: Center(
        child: Text(
          '$text!',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
