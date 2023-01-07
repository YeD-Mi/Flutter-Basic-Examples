import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    var src =
        'https://mryed.com/wp-content/uploads/2021/03/demirel-yunus-emre-gorsel.png';
    return Scaffold(
      appBar: AppBar(title: const Text('List Tile Example')),
      body: Column(children: [
        ListTile(
            onTap: () {},
            title: const Text('My List Tile'),
            subtitle: const Text('Here SubTitle'),
            leading: _BuildRedIconButton(Icons.ac_unit_sharp),
            trailing: _BuildRedIconButton(Icons.arrow_right)),
        ListTile(
          onTap: () {},
          title: const Text('Yunus Emre DEMIREL'),
          minLeadingWidth: 50,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('+905075555555'),
              Text('Izmir'),
              Text('Software Engineer'),
              Text('bilgi@mryed.com'),
            ],
          ),
          leading: Image.network(
            src,
          ),
          trailing: _BuildRedIconButton(Icons.contactless_outlined),
        ),
        ListTile(
          title: const Text('Masite Yildiz'),
          subtitle: const Text('+905532587412'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _BuildRedIconButton(Icons.edit),
              _BuildRedIconButton(Icons.delete),
              _BuildRedIconButton(Icons.add_box),
            ],
          ),
        ),
        ListTile(
          title: const Text('Tarkan'),
          subtitle: const Text('Dudu Dudu'),
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _BuildRedIconButton(Icons.play_circle),
              _BuildRedIconButton(Icons.stop_circle_sharp),
              _BuildRedIconButton(Icons.star_outlined),
            ],
          ),
          trailing: _BuildRedIconButton(Icons.favorite_outlined),
        ),
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  IconButton _BuildRedIconButton(IconData editim) => IconButton(
        onPressed: () {},
        icon: Icon(editim),
        color: Colors.red,
      );
}
