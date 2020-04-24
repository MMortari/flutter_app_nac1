import 'package:flutter/material.dart';
import 'package:flutterapp/model/telefone_model.dart';
import 'package:flutterapp/repository/telefone_repository.dart';

class TelefoneScreen extends StatefulWidget {
  @override
  _TelefoneScreenState createState() => _TelefoneScreenState();
}

class _TelefoneScreenState extends State<TelefoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(93, 153, 236, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 50, 50, 1),
        title: Text("Telefones Celulares"),
      ),
      body: FutureBuilder<List<TelefoneModel>>(
        future: TelefoneRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<TelefoneModel> telefones) {
    return ListView.builder(
      itemCount: telefones == null ? 0 : telefones.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardCurso(telefones[index]);
      },
    );
  }

  Card cardCurso(TelefoneModel telefone) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      color: Color.fromRGBO(50, 50, 50, 1),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(50, 50, 50, 1),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 12.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
              ),
            ),
            child: Icon(
              Icons.smartphone,
              color: Colors.white,
            ),
          ),
          title: Text(
            telefone.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            telefone.marca,
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/celular_detalhes",
              arguments: telefone,
            );
          },
        ),
      ),
    );
  }
}
