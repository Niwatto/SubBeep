import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'title': 'Card 1', 'subtitle': 'Description for Card 1'},
    {'title': 'Card 2', 'subtitle': 'Description for Card 2'},
    {'title': 'Card 3', 'subtitle': 'Description for Card 3'},
    {'title': 'Card 4', 'subtitle': 'Description for Card 4'},
    {'title': 'Card 5', 'subtitle': 'Description for Card 5'},
  ];
  static const routeName = '/home';

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subbeep Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(items[index]['title']!),
              subtitle: Text(items[index]['subtitle']!),
              onTap: () {
                // Handle card tap
                print('Tapped on ${items[index]['title']}');
              },
            ),
          );
        },
      ),
    );
  }
}
