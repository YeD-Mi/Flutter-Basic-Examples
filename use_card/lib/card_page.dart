import 'package:flutter/material.dart';
import 'package:use_card/proje_colors.dart';
import 'package:use_card/proje_size.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Card(
                margin: ProjeSizes.cardMargin,
                color: primaryColor,
                elevation: 10,
                shape: StadiumBorder(),
                child: ProjeSizes.cardBox),
            const Card(
                margin: ProjeSizes.cardMargin,
                color: secondcolor,
                elevation: 20,
                shape: CircleBorder(),
                child: ProjeSizes.cardBox),
            Card(
                margin: ProjeSizes.cardMargin,
                color: thirdcolor,
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ProjeSizes.cardBox),
            _buildCard(),
            _buildListTile()
          ],
        ),
      ),
    );
  }

  Center _buildListTile() {
    return Center(
      child: Card(
        color: primaryColor,
        elevation: 30,
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.question_mark_outlined),
              title: Text('Bize Sor!'),
              subtitle: Text('Merak ettiklerini bize sorabilirsin.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Kapat'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('Sor'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _buildCard() {
    return Card(
      margin: ProjeSizes.cardMargin,
      color: secondcolor,
      elevation: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: ProjeSizes.cardPadding,
        child: InkWell(
          //Column alanina basilinca renk degisecek.
          splashColor: primaryColor,
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: Column(
            children: [
              const Text(
                "Colum Child",
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: ProjeSizes.cardPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ProjeSizes().imageBox(
                        "https://mryed.com/wp-content/uploads/2021/03/demirel-yunus-emre-gorsel.png"),
                    ProjeSizes().imageBox(
                        "https://mryed.com/wp-content/uploads/2022/10/yunus-emre-demirel.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
