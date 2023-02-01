import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:use_pageview/gordios-order/gordios_model.dart';
import 'package:use_pageview/gordios-order/product_select.dart';
import 'package:use_pageview/gordios-order/pattern_select.dart';
import 'package:use_pageview/src/colors.dart';
import 'package:use_pageview/src/strings.dart';

class OrderHomePage extends StatefulWidget {
  const OrderHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OrderHomePageState createState() => _OrderHomePageState();
}

class _OrderHomePageState extends State<OrderHomePage> {
  List<dynamic> _urunlerListesi = [];
  List<String> _kaliteIsimleri = [];
  List<String> _desenIsimleri = [];
  List<String> _desenResimleri = [];

  int _secilenKaliteIndex = 0;
  int _secilenDesenIndex = 0;

  Future<void> _kaliteGetir() async {
    String jsonString =
        await rootBundle.loadString('assets/images/gordioscarpet.json');

    final jsonResponse = json.decode(jsonString);
    _urunlerListesi = jsonResponse.map((x) => Kalite.fromJson(x)).toList();
  }

  void _kaliteIsimleriniGetir() {
    _kaliteIsimleri = [];
    for (var element in _urunlerListesi) {
      _kaliteIsimleri.add(element.kaliteAdi);
    }
    setState(() {
      yuklemeTamamlandiMi = true;
    });
  }

  void _seciminDeseniniGetir(String secilenKalite) {
    _desenIsimleri = [];
    for (var element in _urunlerListesi) {
      if (element.kaliteAdi == secilenKalite) {
        element.desenler.forEach((element) {
          _desenIsimleri.add(element.desenAdi);
        });
      }
    }
  }

  void _secilenResimGetir(String secimin) {
    _desenResimleri = [];
    for (var element in _urunlerListesi) {
      if (element.kaliteAdi == secimin) {
        element.desenler.forEach((element) {
          _desenResimleri.add(element.desenResmi);
        });
      }
    }
  }

  Future<void> _kaliteSayfasinaGit() async {
    if (yuklemeTamamlandiMi) {
      _secilenKaliteIndex = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              KaliteSecimiSayfasi(kaliteIsimleri: _kaliteIsimleri),
        ),
      );

      urunSecilmisMi = true;
      secilenUrun = _kaliteIsimleri[_secilenKaliteIndex];

      _secilenResimGetir(secilenUrun.toString());
      setState(() {});

      _seciminDeseniniGetir(_urunlerListesi[_secilenKaliteIndex].toString());
      setState(() {});
    }
  }

  Future<void> _desenSayfasinaGit() async {
    if (urunSecilmisMi) {
      _seciminDeseniniGetir(_kaliteIsimleri[_secilenKaliteIndex]);
      _secilenDesenIndex = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DesenSecmeSayfasi(desenIsimleri: _desenIsimleri),
        ),
      );
      desenSecilmisMi = true;
      secilenDesen = _desenIsimleri[_secilenDesenIndex];
      setState(() {});
      secilenResim = _desenResimleri[_secilenDesenIndex];
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _kaliteGetir().then((value) => _kaliteIsimleriniGetir());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(orderAppTxt),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        productSelectTxt,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    onPressed: () async {
                      await _kaliteSayfasinaGit();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          desenSecilmisMi ? primaryColor : passiveWidgetColor,
                    ),
                    child: Center(
                      child: Text(
                        patternSelectTxt,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    onPressed: () async {
                      await _desenSayfasinaGit();
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "$selectedProduct $secilenUrun",
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  "$selectedPattern $secilenDesen",
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  standartTxt,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Switch(
                    value: switchValue ??= false,
                    onChanged: (newValue) async {
                      setState(() => switchValue = newValue);
                    },
                    activeColor: primaryColor),
                Text(
                  cuttingTxt,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      '$secilenResim',
                      width: 200,
                    ),
                  ),
                ),
                Column(
                  children: [
                    switchValue! ? _buildKesme() : _buildStandart(),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor),
                        onPressed: () {},
                        child: Text(
                          addToBasketTxt,
                          style: const TextStyle(fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column _buildStandart() {
    return Column(
      children: [
        DropdownButton(
          // Initial Value
          value: standartvalue,

          // Down Arrow Icon
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xFF8f4045),
          ),

          // Array list of items
          items: standartOlculer.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),

          onChanged: (String? newValue) {
            setState(() {
              standartvalue = newValue!;
            });
          },
        ),
        SizedBox(
          width: 160,
          child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.loupe_outlined,
                    color: primaryColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: primaryColor)),
                  labelText: pieceTxt,
                  labelStyle:
                      const TextStyle(color: blackColor, fontSize: 16))),
        ),
      ],
    );
  }

  Column _buildKesme() {
    return Column(
      children: [
        DropdownButton(
          value: kesmevalue,
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: primaryColor,
          ),
          items: kesmeler.map((String kesmeler) {
            return DropdownMenuItem(
              value: kesmeler,
              child: Text(kesmeler),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              kesmevalue = newValue!;
            });
          },
        ),
        SizedBox(
          width: 160,
          child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.cut_outlined, color: primaryColor),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: primaryColor)),
                  labelText: lenghtTxt,
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 16))),
        ),
        DropdownButton(
          value: kenarlikvalue,
          icon: Icon(Icons.keyboard_arrow_down, color: primaryColor),
          items: kenarlik.map((String kenarlik) {
            return DropdownMenuItem(
              value: kenarlik,
              child: Text(kenarlik),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              kenarlikvalue = newValue!;
            });
          },
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 160,
          child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.loupe_outlined, color: primaryColor),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: primaryColor)),
                  labelText: pieceTxt,
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 16))),
        ),
      ],
    );
  }
}
