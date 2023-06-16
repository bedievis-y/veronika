import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veronika/page/second_page.dart';
import 'package:veronika/provider/theme_provider.dart';
import 'package:veronika/widget/change_theme_button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).logging;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Veronika APP'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
            ),
            child: const Text(
              'next page',
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: ChangeThemeButtonWidget(),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: text.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text(text[index]));
                }),
          ),
        ],
      ),
    );
  }
}
