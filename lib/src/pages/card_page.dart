import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          const SizedBox(height: 30),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.image_outlined, color: Colors.blue),
            title: Text('The title of this Card.'),
            subtitle: Text(
                'This is my firts card using Flutter. I´m excited for reading so much more...'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: const Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: const Text('Ok'),
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
        child: Column(
      children: <Widget>[
        const FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/130238819/original/d4096d4950eba421600f21c6c753c19375222eb6/draw-you-a-landscape-image-with-ms-paint.png'),
          fadeInDuration: Duration(milliseconds: 500),
          height: 300,
          fit: BoxFit.cover,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text('This other type card...'),
        ),
      ],
    ));
  }
}
