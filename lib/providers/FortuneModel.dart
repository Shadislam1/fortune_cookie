
import 'dart:math';
import 'package:flutter/foundation.dart'; // Change from 'package:flutter/widgets.dart';

class FortuneModel with ChangeNotifier {
  String _currentFortune = "";

  final List<String> _fortuneList = [
    'You will find a new friend',
    'You will find a new friend tomorrow',
    'A true friend loves you',
    'Life is awesome when you read the Quran'
  ];

  String get currentFortune => _currentFortune;

  FortuneModel() {
    _generateRandomFortune();
  }

  void _generateRandomFortune() {
    var random = Random();
    int randNum = random.nextInt(_fortuneList.length);
    _currentFortune = _fortuneList[randNum];
    notifyListeners();
  }

  // Method to get a new random fortune
  void getNewFortune() {
    _generateRandomFortune();
  }
}
