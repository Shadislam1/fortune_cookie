import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fortune_cookie/providers/FortuneModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: ( context) => FortuneModel(),
  child: const MyApp()));
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
   
  

 

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  


  

  // void _incrementCounter() {
  //   setState(() {
      
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final  fortune = Provider.of<FortuneModel>(context);
   
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
                fortune.currentFortune,
                style: Theme.of(context).textTheme.titleMedium,
                          ),
              ), 
            ),
            ElevatedButton(
              onPressed:() => fortune.getNewFortune()  , 
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
