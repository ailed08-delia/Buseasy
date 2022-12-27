import 'package:flutter/material.dart';
import '../empresa/empresas.dart';
import '../sign_in/sign_in_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Bienvenido')),
        //body: new ListView(children: empresas.map(_buildItem).toList()),
        drawer: Drawer(
          child: ListView(
            // Importante: elimine cualquier padding del ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('APLICACIÓN'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Pantalla Principal'),
                onTap: () {
                  //Navigator.pushNamed(context, "/home");
                },
              ),
              ListTile(
                title: Text('Empresas'),
                onTap: () {
                  Navigator.pushNamed(context, "/business");
                },
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
    subtitle: new Text('Fecha: ${paciente.date}'),
    leading: new Icon(Icons.car_crash),
  );
}
