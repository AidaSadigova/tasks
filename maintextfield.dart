import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: TextCleaner(),
    );
  }
}

class TextCleaner extends StatefulWidget {
  const TextCleaner({super.key});

  @override
  State<TextCleaner> createState() => _TextCleanerState();
}

class _TextCleanerState extends State<TextCleaner> {
  final TextEditingController _textController = TextEditingController();
  final List<String> _items = [];

  void addItem() {
    setState(() {
      _items.add(_textController.text);
      _textController.clear();
    });
  }

  void removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text('Call Center'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _items.clear();
                });
              },
              icon: const FaIcon(FontAwesomeIcons.trash),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.purple,
              controller: _textController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purple[50],
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(width: 4.0, color: Colors.pinkAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(width: 4.0, color: Colors.purple),
                ),
                hintText: 'Search for a number',
                hintStyle: TextStyle(color: Colors.purple[700]),
                labelText: 'Number',
                labelStyle:
                    TextStyle(fontSize: 20.0, color: Colors.purple[800]),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.purple[700],
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    addItem();
                  },
                  icon: const FaIcon(FontAwesomeIcons.plus),
                  color: Colors.purple[700],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(_items[index]),
                      trailing: IconButton(
                        onPressed: () {
                          removeItem(index);
                        },
                        icon: const Icon(Icons.delete),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
