import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Demo'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next page',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(title: const Text('Next page')),
                        body: const Center(
                          child: Text('This is the next page', style: TextStyle(fontSize: 24)),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
        body:Row(
            children: [
              Expanded(child: Container(color:Colors.blue)),
              Container(color:Colors.green, width:200),
            ]
        ),
        bottomNavigationBar: BottomAppBar(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Icon(Icons.phone),
                     Icon(Icons.message),
                     Icon(Icons.contact_page),
                  ],
                 )
        ),
      )
    );
    //return const Placeholder();
  }
}

