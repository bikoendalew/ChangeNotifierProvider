import 'package:flutter/material.dart';
import 'package:untitled1/serv.dart';
import 'file.dart';
class Data extends ChangeNotifier{
  Filee? post;
  bool loading=false;
  getData() async{
    loading=true;
    post=(await fetchData())!;
    loading=false;
    notifyListeners();
  }
}
