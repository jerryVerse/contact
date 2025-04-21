import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('TodoList'),backgroundColor: Colors.blue,),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(color:Colors.black),
              ),
              child:  Text('aaa'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          )
        ),
      )
    );
  }
}
