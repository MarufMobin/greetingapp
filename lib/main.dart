import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Greeting App")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(),
          Text('Hello, World!', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
          SizedBox(height: 20),

          Text('Welcome to Flutter!'),
          SizedBox(height: 20),

          Image(image: NetworkImage('https://cdn.iconscout.com/icon/free/png-512/free-flutter-3628777-3030139.png?f=webp&w=256'),width: 250,),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Button Pressed!'),
                ),
              );
            },
            child: Text(
              'Press Me',
              style: TextStyle(
                  color: Colors.black,

              ),
            ),
          ),
        ],
      )
    );
  }
}