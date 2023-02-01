import 'package:flutter/material.dart';
import 'package:use_pageview/src/colors.dart';
import 'package:use_pageview/src/strings.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: Center(child: Text(profilAppTxt))),
      body: const _BuildBody(),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.account_box,
                    color: primaryColor,
                    size: 26.0,
                  ),
                  title: Text(
                    companyNameTxt,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text(companySubTxt),
                  trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF8f4045)),
                      onPressed: () {},
                      child: Text(editTxt)),
                ),
                Divider(
                  color: primaryColor,
                  indent: 16.0,
                ),
                ListTile(
                  leading: Icon(
                    Icons.email,
                    color: primaryColor,
                    size: 26.0,
                  ),
                  title: Text(
                    companyMail,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: primaryColor,
                    size: 26.0,
                  ),
                  title: Text(
                    companyTel,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.attach_money_outlined,
                    color: primaryColor,
                    size: 26.0,
                  ),
                  title: const Text(
                    "(+) 15780 TL",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor),
                      onPressed: () {},
                      child: Text(paymentTxt)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              finishingTxt,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Ürün',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Adet',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Fiyat',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Tarih',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Sedef 470 160x230')),
                  DataCell(Text('3')),
                  DataCell(Text('+1200')),
                  DataCell(Text('25.01.2023')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Marmaris 1725 120x180')),
                  DataCell(Text('2')),
                  DataCell(Text('+600')),
                  DataCell(Text('24.01.2023')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Odeme (Havale/EFT)')),
                  DataCell(Text('-')),
                  DataCell(Text('-8000')),
                  DataCell(Text('23.01.2023')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Dolmabahce 4540 200x290')),
                  DataCell(Text('2')),
                  DataCell(Text('+1400')),
                  DataCell(Text('22.01.2023')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Lara 1903 160x230')),
                  DataCell(Text('2')),
                  DataCell(Text('+800')),
                  DataCell(Text('20.01.2023')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Bodrum 333 160x230')),
                  DataCell(Text('1')),
                  DataCell(Text('+750')),
                  DataCell(Text('19.01.2023')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Birgi 9004 120x180')),
                  DataCell(Text('4')),
                  DataCell(Text('+1600')),
                  DataCell(Text('17.01.2023')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Efes 2281 160x230')),
                  DataCell(Text('2')),
                  DataCell(Text('+1000')),
                  DataCell(Text('15.01.2023')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
