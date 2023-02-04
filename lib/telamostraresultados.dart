import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'globals.dart' as global;

class telaMostraResultado extends StatefulWidget {
  @override
  _telaMostraResultadoState createState() => _telaMostraResultadoState();
}

class _telaMostraResultadoState extends State<telaMostraResultado> {
  List data;

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    return new FutureBuilder(
        future: getTextApotas(),
        initialData: "BOA SORTE!!",
        builder: (BuildContext context, AsyncSnapshot<String> text) {
          return new Scaffold(
            appBar: new AppBar(
              title: Text("Resultados"),
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

    return Resultado(
        int.parse(global.a),
        int.parse(global.b),
        int.parse(global.c),
        int.parse(global.d),
        int.parse(global.e),
        int.parse(global.f));
  }

  Future<String> getTextApotas() async {
    return await loadJsonData();
  }

  String Resultado(int a, b, c, d, e, f) {
    String resultado = "";
    String mod = "";
    int controleResultado = 0;

    for (int k = 0; k < 140; k++) {
      if (data[k]['num1'] == a ||
          data[k]['num2'] == a ||
          data[k]['num3'] == a ||
          data[k]['num4'] == a ||
          data[k]['num5'] == a ||
          data[k]['num6'] == a) {
        controleResultado++;
      }

      if (data[k]['num1'] == b ||
          data[k]['num2'] == b ||
          data[k]['num3'] == b ||
          data[k]['num4'] == b ||
          data[k]['num5'] == b ||
          data[k]['num6'] == b) {
        controleResultado++;
      }

      if (data[k]['num1'] == c ||
          data[k]['num2'] == c ||
          data[k]['num3'] == c ||
          data[k]['num4'] == c ||
          data[k]['num5'] == c ||
          data[k]['num6'] == c) {
        controleResultado++;
      }

      if (data[k]['num1'] == d ||
          data[k]['num2'] == d ||
          data[k]['num3'] == d ||
          data[k]['num4'] == d ||
          data[k]['num5'] == d ||
          data[k]['num6'] == d) {
        controleResultado++;
      }

      if (data[k]['num1'] == e ||
          data[k]['num2'] == e ||
          data[k]['num3'] == e ||
          data[k]['num4'] == e ||
          data[k]['num5'] == e ||
          data[k]['num6'] == e) {
        controleResultado++;
      }

      if (data[k]['num1'] == f ||
          data[k]['num2'] == f ||
          data[k]['num3'] == f ||
          data[k]['num4'] == f ||
          data[k]['num5'] == f ||
          data[k]['num6'] == f) {
        controleResultado++;
      }

      switch (controleResultado) {
        case 3:
          {
            print("Três");
          }
          break;

        case 4:
          {
            print("Quatro");
          }
          break;

        case 5:
          {
            print("Cinco");
          }
          break;

        case 6:
          {
            print("Seis");
          }
          break;
      }

      if (controleResultado >= 3) {
        switch (controleResultado) {
          case 3:
            {
              mod = "Terno de ";
            }
            break;

          case 4:
            {
              mod = "Quadra de ";
            }
            break;

          case 5:
            {
              mod = "Quina de ";
            }
            break;

          case 6:
            {
              mod = "Sena de ";
            }
            break;

          default:
            {
              mod = "";
            }
            break;
        }

        resultado = resultado +
            mod +
            data[k]['nome'] +
            " na jogada nº" +
            data[k]['seq'].toString() +
            "\n\n" +
            "                 com os nºs: " +
            "\n\n" +
            "           " +
            data[k]['num1'].toString() +
            " " +
            data[k]['num2'].toString() +
            " " +
            data[k]['num3'].toString() +
            " " +
            data[k]['num4'].toString() +
            " " +
            data[k]['num5'].toString() +
            " " +
            data[k]['num6'].toString() +
            "\n\n";
      }
      controleResultado = 0;
    }

    if (resultado == "") {
      return "\n\n\n\n\n\n\n\n\n\          Não deu nada!! \n Quem sabe no Próximo ano?";
    }

    return resultado;
  }
}
