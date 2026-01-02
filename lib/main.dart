import 'package:flutter/material.dart';

import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/textfield_widget.dart';
import 'basic_widgets/date_picker_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Praktikum'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            child: const Text('Langkah 3 - Scaffold Widget'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScaffoldWidget(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('Langkah 4 - Dialog Widget'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DialogWidget(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('Langkah 5 - TextField Widget'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextFieldWidget(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            child: const Text('Langkah 6 - Date Picker Widget'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DatePickerWidget(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
