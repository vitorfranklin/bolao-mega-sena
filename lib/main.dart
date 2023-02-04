import 'package:flutter/material.dart';
import 'telaresultado.dart';
import 'telamostraresultados.dart';
import 'globals.dart' as globals;

void main() {
  runApp(MaterialApp(
    home: MegaSena(),
    debugShowCheckedModeBanner: false,
  ));
}

class MegaSena extends StatefulWidget {
  @override
  _MegaSenaState createState() => _MegaSenaState();
}

class _MegaSenaState extends State<MegaSena> {
  final _formKey = GlobalKey<FormState>();

  FocusNode mFoco;
  final meuController = TextEditingController();
  final meuController1 = TextEditingController();
  final meuController2 = TextEditingController();
  final meuController3 = TextEditingController();
  final meuController4 = TextEditingController();
  final meuController5 = TextEditingController();

  @override
  void initState() {
    super.initState();
    mFoco = FocusNode();
  }

  @override
  void dispose() {
    meuController.dispose();
    meuController1.dispose();
    meuController2.dispose();
    meuController3.dispose();
    meuController4.dispose();
    meuController5.dispose();
    mFoco.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: new AppBar(
        title: Center(
            child: Text(
          "Bolão Mega Sena",
          textAlign: TextAlign.center,
        )),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        width: larguraTela,
        height: alturaTela,
        //  color: Colors.purple,
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  width: larguraTela,
                  height: alturaTela / 8,
                  //padding: EdgeInsets.only(top: alturaTela/8),
                  //            color: Colors.white,
                  child: new Center(
                    child: Image.asset('imagens/megaSenaLogo.png'),
                  ),
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                new Form(
                    key: _formKey,
                    child: new Container(
                        height: alturaTela / 6,
                        width: larguraTela,
                        //                color: Colors.red,
                        padding: EdgeInsets.only(left: larguraTela / 32),
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              width: larguraTela / 6.4,
                              //                    color: Colors.blue,
                              child: TextFormField(
                                controller: meuController,
                                focusNode: mFoco,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '01',
                                ),
                                onSaved: (String val) {
                                  globals.a = val;
                                },
                                onChanged: (String val) {
                                  globals.a = val;
                                },
                                validator: (value) {
                                  int numero = int.parse(value);

                                  if (numero < 1 || numero > 60) {
                                    print('Numero deve estar entre 1 e 60');
                                    return 'Numero deve estar entre 1 e 60';
                                  } else if (value.isEmpty) {
                                    print('Valor não pode estar em branco');
                                    return 'Valor não pode estar em branco';
                                  } else if (numero == int.parse(globals.b) ||
                                      numero == int.parse(globals.c) ||
                                      numero == int.parse(globals.d) ||
                                      numero == int.parse(globals.e) ||
                                      numero == int.parse(globals.f)) {
                                    print("Número Repetido");
                                    return 'Numero repetido';
                                  } else
                                    return null;
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            new Container(
                              width: larguraTela / 6.4,
                              //                     color: Colors.green,
                              child: TextFormField(
                                controller: meuController1,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '02',
                                ),
                                onSaved: (String val) {
                                  globals.b = val;
                                },
                                onChanged: (String val) {
                                  globals.b = val;
                                },
                                validator: (value) {
                                  int numero = int.parse(value);

                                  if (numero < 1 || numero > 60) {
                                    print('Não pode ser maior que 60');
                                    return 'Não pode ser maior que 60';
                                  } else if (value.isEmpty) {
                                    print('Valor não pode estar em branco');
                                    return 'Valor não pode estar em branco';
                                  } else if (numero == int.parse(globals.a) ||
                                      numero == int.parse(globals.c) ||
                                      numero == int.parse(globals.d) ||
                                      numero == int.parse(globals.e) ||
                                      numero == int.parse(globals.f)) {
                                    print("Número Repetido");
                                    return 'Numero repetido';
                                  } else
                                    return null;
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            new Container(
                              width: larguraTela / 6.4,
                              //color: Colors.purple,
                              child: TextFormField(
                                controller: meuController2,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '03',
                                ),
                                onSaved: (String val) {
                                  globals.c = val;
                                },
                                onChanged: (String val) {
                                  globals.c = val;
                                },
                                validator: (value) {
                                  int numero = int.parse(value);

                                  if (numero < 1 || numero > 60) {
                                    print('Não pode ser maior que 60');
                                    return 'Não pode ser maior que 60';
                                  } else if (value.isEmpty) {
                                    print('Valor não pode estar em branco');
                                    return 'Valor não pode estar em branco';
                                  } else if (numero == int.parse(globals.b) ||
                                      numero == int.parse(globals.a) ||
                                      numero == int.parse(globals.d) ||
                                      numero == int.parse(globals.e) ||
                                      numero == int.parse(globals.f)) {
                                    print("Número Repetido");
                                    return 'Numero repetido';
                                  } else
                                    return null;
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            new Container(
                              width: larguraTela / 6.4,
                              //                   color: Colors.purple,
                              child: TextFormField(
                                controller: meuController3,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '04',
                                ),
                                onSaved: (String val) {
                                  globals.d = val;
                                },
                                onChanged: (String val) {
                                  globals.d = val;
                                },
                                validator: (value) {
                                  int numero = int.parse(value);

                                  if (numero < 1 || numero > 60) {
                                    print('Não pode ser maior que 60');
                                    return 'Não pode ser maior que 60';
                                  } else if (value.isEmpty) {
                                    print('Valor não pode estar em branco');
                                    return 'Valor não pode estar em branco';
                                  } else if (numero == int.parse(globals.b) ||
                                      numero == int.parse(globals.c) ||
                                      numero == int.parse(globals.a) ||
                                      numero == int.parse(globals.e) ||
                                      numero == int.parse(globals.f)) {
                                    print("Número Repetido");
                                    return 'Numero repetido';
                                  } else
                                    return null;
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            new Container(
                              width: larguraTela / 6.4,
                              //                     color: Colors.yellow,
                              child: TextFormField(
                                controller: meuController4,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '05',
                                ),
                                onSaved: (String val) {
                                  globals.e = val;
                                },
                                onChanged: (String val) {
                                  globals.e = val;
                                },
                                validator: (value) {
                                  int numero = int.parse(value);

                                  if (numero < 1 || numero > 60) {
                                    print('Não pode ser maior que 60');
                                    return 'Não pode ser maior que 60';
                                  } else if (value.isEmpty) {
                                    print('Valor não pode estar em branco');
                                    return 'Valor não pode estar em branco';
                                  } else if (numero == int.parse(globals.b) ||
                                      numero == int.parse(globals.c) ||
                                      numero == int.parse(globals.d) ||
                                      numero == int.parse(globals.a) ||
                                      numero == int.parse(globals.f)) {
                                    print("Número Repetido");
                                    return 'Numero repetido';
                                  } else
                                    return null;
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            new Container(
                              width: larguraTela / 6.4,
                              //                 color: Colors.yellow,
                              child: TextFormField(
                                controller: meuController5,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '06',
                                ),
                                onSaved: (String val) {
                                  globals.f = val;
                                },
                                onChanged: (String val) {
                                  globals.f = val;
                                },
                                validator: (value) {
                                  int numero = int.parse(value);

                                  if (numero < 1 || numero > 60) {
                                    print('Não pode ser maior que 60');
                                    return 'Não pode ser maior que 60';
                                  } else if (value.isEmpty) {
                                    print('Valor não pode estar em branco');
                                    return 'Valor não pode estar em branco';
                                  } else if (numero == int.parse(globals.b) ||
                                      numero == int.parse(globals.c) ||
                                      numero == int.parse(globals.d) ||
                                      numero == int.parse(globals.e) ||
                                      numero == int.parse(globals.a)) {
                                    print("Número Repetido");
                                    return 'Numero repetido';
                                  } else
                                    return null;
                                },
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ))),
              ],
            ),
            new Row(
              children: <Widget>[
                new Container(
                  height: alturaTela / 8,
                  width: larguraTela / 3,

                  padding: EdgeInsets.only(
                      right: larguraTela / 20, left: larguraTela / 20),
                  //     color: Colors.yellow,
                  child: FlatButton(
                    color: Colors.green,
                    child: Text(
                      "Jogos",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    onPressed: _showPaginaResultado,
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                  ),
                ),
                new Container(
                  height: alturaTela / 8,
                  width: larguraTela / 3,
                  padding: EdgeInsets.only(
                      right: larguraTela / 20, left: larguraTela / 20),
                  child: FlatButton(
                    child: Text(
                      "Conferir",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    color: Colors.green,
                    onPressed: _showMostraPaginaResultado,
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                  ),
                ),
                new Container(
                  height: alturaTela / 8,
                  width: larguraTela / 3,
                  padding: EdgeInsets.only(
                      right: larguraTela / 20, left: larguraTela / 20),
                  child: FlatButton(
                    child: Text(
                      "Limpar",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    color: Colors.green,
                    onPressed: limpaTextFields,
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(90.0)),
                  ),
                ),
              ],
            ),
            new Container(
              width: larguraTela,
              height: alturaTela / 15,
              // color: Colors.purple,
              padding: EdgeInsets.only(
                left: larguraTela / 4,
              ),
              child: new Row(
                children: <Widget>[
                  new SingleChildScrollView(
                    child: new Container(
                      margin: new EdgeInsets.all(20.0),
                      //margin: EdgeInsets.only(left: 1.0),
                      child: null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaginaResultado() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => telaResultado()),
    );
  }

  void limpaTextFields() {
    meuController.selection;
    meuController.clear();
    meuController1.clear();
    meuController2.clear();
    meuController3.clear();
    meuController4.clear();
    meuController5.clear();
    FocusScope.of(context).requestFocus((mFoco));
  }

  void _showMostraPaginaResultado() {
    if (_formKey.currentState.validate()) {
      print("Está aconteceno");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => telaMostraResultado()),
      );
      _formKey.currentState.save();
    } else {
      new AlertDialog(
        content: Text("Numero em Branco"),
      );
    }
  }
}
