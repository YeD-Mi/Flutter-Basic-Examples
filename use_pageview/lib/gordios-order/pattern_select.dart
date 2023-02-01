import 'package:flutter/material.dart';

class DesenSecmeSayfasi extends StatefulWidget {
  final List desenIsimleri;

  const DesenSecmeSayfasi({Key? key, required this.desenIsimleri})
      : super(key: key);
  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _DesenSecmeSayfasiState createState() =>
      // ignore: no_logic_in_create_state
      _DesenSecmeSayfasiState(desenIsimleri);
}

class _DesenSecmeSayfasiState extends State<DesenSecmeSayfasi> {
  final List desenIsimleri;

  _DesenSecmeSayfasiState(this.desenIsimleri);

  @override
  void initState() {
    super.initState();
    desenIsimleri.sort((a, b) => a.toString().compareTo(b.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.desenIsimleri.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                widget.desenIsimleri[index],
              ),
              onTap: () {
                Navigator.pop(context, index);
              },
            );
          }),
    );
  }
}
