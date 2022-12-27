import 'package:flutter/material.dart';
import './empresas.dart';

class EmpresaPage extends StatelessWidget {
  const EmpresaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Empresas')),
        body: new ListView(children: empresas.map(_buildItem).toList()),
        drawer: Drawer(
          child: ListView(
            // Importante: elimine cualquier padding del ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Pantalla Principal'),
                onTap: () {
                  Navigator.pushNamed(context, "/home");
                },
              ),
              ListTile(
                title: Text('Empresas'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Salir'),
                onTap: () {
                  Navigator.pushNamed(context, "/sign-in");
                },
              ),
            ],
          ),
        ),
        floatingActionButton:
            null);
  }
}

Widget _buildItem(Empresa paciente) {
  return new ListTile(
    title: new Text(paciente.name),
    subtitle: new Text('Dirección: ${paciente.date}'),
    leading: new Icon(Icons.person),
  );
}
