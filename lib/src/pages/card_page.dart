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
          const SizedBox(height: 30),
          _cardTipo1(),
          const SizedBox(height: 30),
          _cardTipo2(),
          const SizedBox(height: 30),
          _cardTipo1(),
          const SizedBox(height: 30),
          _cardTipo2(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
              TextButton(
                child: const Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
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

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ),
    );
  }
}
