import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key});
   
   String _currentFortune = "";

 

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String _currentFortune = "";

  final _fortuneList = [
    'You will finad a new friend',
    'You will finad a new friend tomorrow',
    'A truly friend love you',
    'life is awesome when you read quran'

  ];

  void _randomFortune(){
    
    var random = Random();
   int fortune = random.nextInt(_fortuneList.length);
   setState(() {
      _currentFortune =_fortuneList[fortune];
   });
   
   print(_currentFortune);
  }
  

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text("Flutter Demo"),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/fortune_cookie.png',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
            
            ),
             Text(
              'your fortune is:',
              style: TextStyle(
                fontSize: 19.0,
              fontWeight: FontWeight.bold),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                 "${_currentFortune}",
                style: Theme.of(context).textTheme.titleMedium,
                          ),
              ), 
            ),
            ElevatedButton(
              onPressed:  _randomFortune, 
              child: Text('Get Fortune'),
              ),
           
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), 
    );
  }
}
