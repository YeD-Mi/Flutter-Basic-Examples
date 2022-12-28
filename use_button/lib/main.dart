import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//DropDownMenu icin olusturuldu.
const List<String> list = <String>[
  '1.Secim',
  '2.Secim',
  '3.Secim',
  '4.Secim',
  '5.Secim'
];
String dropdownValue = list.first;

//Popup Menu icin olusturuldu.
enum SampleItem { itemOne, itemTwo, itemThree }

SampleItem? selectedMenu;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const FirstPage(title: 'Flutter Buttons'),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: _buildBody(),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
            },
            tooltip: 'Floating Button',
            child: const Icon(
              Icons.mouse,
              color: Colors.teal,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
    );
  }

  _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Flutter Button Example',
          ),
          TextButton(
            //Arka renk siyah. Ancak basilirken kirmizi.
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.red;
              }
              return Colors.black;
            })),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
            },
            child: const Text(
              'Text Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
            },
            child: const Text(
              'Elevated Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar);
              },
              child: const SizedBox(
                height: 15,
                child: Text(
                  'Inkwell Button',
                  style: TextStyle(color: Colors.teal),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar);
              },
              icon: const Icon(Icons.ads_click_rounded)),
          OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar);
              },
              child: const Text('Outline Button')),
          _dropDownButton(),
          _popUpMenuButton()
        ],
      ),
    );
  }

  _dropDownButton() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      style: const TextStyle(color: Colors.teal),
      onChanged: (String? value) {
        {
          setState(() {
            dropdownValue = value!;
          });
          // ignore: avoid_print
          print(dropdownValue);
        }
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _popUpMenuButton() {
    return PopupMenuButton<SampleItem>(
      initialValue: selectedMenu,
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text('1.Secim'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text('2.Secim'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text('3.Secim'),
        ),
      ],
    );
  }
}

const _snackBar = SnackBar(
  content: Text(
    'Butona Basildi.',
  ),
  backgroundColor: Colors.teal,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20))),
);
