import 'package:flutter/material.dart';

class ProjeSizes {
  static const cardMargin = EdgeInsets.all(10);
  static const cardPadding = EdgeInsets.all(15);
  static const yaziSize = 20;
  static const cardBox = SizedBox(
    height: 100,
    width: 200,
    child: Center(child: Text('MrYED')),
  );
  Image imageBox(String title) {
    return Image.network(
      title,
      width: 150,
      height: 150,
      fit: BoxFit.cover,
      //gorsel gelmedigi durumda icon gosterilecek.
      errorBuilder: ((context, error, stackTrace) =>
          const Icon(Icons.published_with_changes_outlined)),
    );
  }
}
