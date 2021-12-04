import 'package:componentes_flutter/src/providers/menu_provider.dart';
import 'package:componentes_flutter/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List? data, BuildContext context) {
    final List<Widget> opciones = [];

    data!.forEach((opt) {
      final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
            // final route = MaterialPageRoute(builder: (context) {
            //   return const AlertPage();
            // });
            // Navigator.push(context, route);
          });
      opciones.add(widgetTemp);
      opciones.add(const Divider());
    });
    return opciones;
  }
}
