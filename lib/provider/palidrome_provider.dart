


import 'package:flutter/material.dart';

class PalidromeProvider extends ChangeNotifier {

  var isPalidrome = true;
  
    
    polidromeCheck(String text){
    final chars = text.split('');
    String rev = chars.reversed.join('');
    if(rev == text){ 
      isPalidrome = true;
      print("$text is polidrome");
    }else{
      isPalidrome = false;
      print("$text is not polidrome");
    }
    notifyListeners();
  }

}