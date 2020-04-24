import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/telefone_model.dart';

class TelefoneDetalhesScreen extends StatelessWidget {
  TelefoneModel telefoneModel;

  @override
  Widget build(BuildContext context) {
    telefoneModel = ModalRoute.of(context).settings.arguments;

    final consolePrice = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
        border: new Border.all(color: Color.fromRGBO(93, 153, 236, 1)),
        borderRadius: BorderRadius.circular(5.0),
        color: Color.fromRGBO(93, 153, 236, 1),
        // background
      ),
      child: Center(
        child: Text(
          telefoneModel.ano.toString(),
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 77.0),
        Text(telefoneModel.nome,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45.0,
            )),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Expanded(
            flex: 9,
            child: Text(telefoneModel.marca,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25.0,
                )),
          ),
          Expanded(flex: 3, child: consolePrice),
        ]),
        SizedBox(height: 33.0),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Expanded(
            flex: 2,
            child: Icon(Icons.battery_full, color: Colors.white),
          ),
          Expanded(
            flex: 2,
            child: Icon(Icons.memory, color: Colors.white),
          ),
          Expanded(
            flex: 2,
            child: Icon(Icons.camera_alt, color: Colors.white),
          ),
          Expanded(
            flex: 2,
            child: Icon(Icons.smartphone, color: Colors.white),
          ),
        ]),
        SizedBox(height: 7.7),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Text(
                telefoneModel.bateria.toString() + "mAh",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                telefoneModel.ram.toString() + "GB RAM",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                telefoneModel.cameraMp.toString() + "MP",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                telefoneModel.tamTela.toString() + "\"",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );

    var topContent = Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(30.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(50, 50, 50, 1)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "Descrição",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 20.0),
            Text(
              telefoneModel.descricao,
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
    );
  }
}
