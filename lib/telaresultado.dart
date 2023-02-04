import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class telaResultado extends StatefulWidget {
  @override
  _telaResultadoState createState() => _telaResultadoState();
}

class _telaResultadoState extends State<telaResultado> {
  List data;

  @override
  /*void initState() {
    this.loadJsonData();
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    return new FutureBuilder(
        future: loadJsonData(),
        initialData: "Carregando Apostas...",
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          return new Scaffold(
            appBar: new AppBar(
              title: Text("Jogos"),
              backgroundColor: Colors.green,
            ),
            body: new SingleChildScrollView(
                padding: new EdgeInsets.all(8.0),
                child: new Center(
                  child: new Text(
                    text.data,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0,
                    ),
                  ),
                )),
          );
        });
  }

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('arquivos/megavirada.json');
    setState(() {
      data = json.decode(jsonText);
    });
    return _funcaoTemporaria();
  }

  /*Future<String> getTextApotas() async{

    return await loadJsonData();
  }*/

  _funcaoTemporaria() {
    String retorno = "";
    String nome = "";

    for (int i = 0; i < 140; i++) {
      // String nome = data[id+i]['nome'];

      switch (i) {
        case 0:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 10:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 20:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 30:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;

        case 40:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 50:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 60:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 70:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 80:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 90:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 100:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 110:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 120:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;
        case 130:
          {
            nome = "---------" + data[i]['nome'] + "----------" + "\n\n";
          }
          break;

        default:
          {
            nome = "";
          }
          break;
      }

      String n1 = data[i]['num1'].toString();
      String n2 = data[i]['num2'].toString();
      String n3 = data[i]['num3'].toString();
      String n4 = data[i]['num4'].toString();
      String n5 = data[i]['num5'].toString();
      String n6 = data[i]['num6'].toString();

      retorno = retorno +
          " " +
          nome +
          "" +
          n1 +
          " " +
          n2 +
          " " +
          n3 +
          " " +
          n4 +
          " " +
          n5 +
          " " +
          n6 +
          "\n\n";
    }

    return retorno;
  }
}
