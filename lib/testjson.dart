import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';


class JsonTester extends StatefulWidget {
  @override
  _JsonTesterState createState() => _JsonTesterState();
}

class _JsonTesterState extends State<JsonTester> {

  List data;
  Future<String> loadJsonData() async{
    var jsonText= await rootBundle.loadString('arquivos/megavirada.json');
    setState(() {

      data= json.decode(jsonText);

    });
    print(jsonText);
  }

  @override
  void initState(){

    this.loadJsonData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

