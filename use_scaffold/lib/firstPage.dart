// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});
  final String title;

  @override
  State<FirstPage> createState() => _FirstState();
}

class _FirstState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: const Drawer(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Giris Yap',
        child: const Icon(Icons.door_sliding_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt), label: 'Yeni Uyelik'),
        BottomNavigationBarItem(
            icon: Icon(Icons.live_help_rounded), label: 'Unuttum')
      ]),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Center(child: Text(widget.title)),
      centerTitle: true,
      leading: const Icon(Icons.turn_left_sharp),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
    );
  }

  Center _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  'https://media2.giphy.com/media/XfKH177bIXDnQalzGc/giphy.gif?cid=ecf05e47jrpw2ar8enp6ffezphbckj8bzyosevhvh8zzly8m&rid=giphy.gif&ct=g'),
              const SizedBox(height: 20),
              const TextField(
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail), hintText: 'E-Posta Adresi'),
              ),
              const SizedBox(height: 20),
              const TextField(
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key), hintText: 'Sifre'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Giriş Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
