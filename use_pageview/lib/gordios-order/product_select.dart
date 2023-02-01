import 'package:flutter/material.dart';

class KaliteSecimiSayfasi extends StatefulWidget {
  final List kaliteIsimleri;

  const KaliteSecimiSayfasi({Key? key, required this.kaliteIsimleri})
      : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _KaliteSecimiSayfasiState createState() => _KaliteSecimiSayfasiState();
}

class _KaliteSecimiSayfasiState extends State<KaliteSecimiSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.kaliteIsimleri.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                widget.kaliteIsimleri[index],
              ),
              onTap: () {
                Navigator.pop(context, index);
              },
            );
          }),
    );
  }
}
