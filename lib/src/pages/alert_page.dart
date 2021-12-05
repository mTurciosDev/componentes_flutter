import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Mostrar Alerta'),
          onPressed: () {
            _mostrarAlerta(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: const Text('Título'),
            content:
                Column(mainAxisSize: MainAxisSize.min, children: const <Widget>[
              Text('The content of AlertDialog...'),
              FlutterLogo(
                size: 50.00,
              )
            ]),
            actions: [
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar'),
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Ok'),
              )
            ],
          );
        });
  }
}
