import 'package:flutter/material.dart';
import 'package:use_pageview/gordios-order/home_page.dart';

import 'package:use_pageview/profil_page.dart';
import 'package:use_pageview/shoppingcart_page.dart';
import 'package:use_pageview/src/colors.dart';
import 'package:use_pageview/src/strings.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int _selectecIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectecIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const _FloatingButtons(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _myBottomBar(),
        body: _selectecIndex == 0 ? const _BuildPage() : const ProfilPage());
  }

  BottomNavigationBar _myBottomBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: const Icon(Icons.home), label: orderBottom),
        BottomNavigationBarItem(
            icon: const Icon(Icons.person_pin), label: profilBottom),
      ],
      currentIndex: _selectecIndex,
      selectedItemColor: primaryColor,
      onTap: _onItemTapped,
    );
  }
}

class _FloatingButtons extends StatelessWidget {
  const _FloatingButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
          side: const BorderSide(width: 3, color: brownColor),
          borderRadius: BorderRadius.circular(100)),
      backgroundColor: whiteColor,
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const ShoppingCart()));
      },
      child: const Icon(
        Icons.shopping_cart_rounded,
        color: blackColor,
      ),
    );
  }
}

class _BuildPage extends StatelessWidget {
  const _BuildPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OrderHomePage();
  }
}
