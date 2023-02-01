import 'package:flutter/material.dart';
import 'package:use_pageview/order_page.dart';
import 'package:use_pageview/src/colors.dart';
import 'package:use_pageview/src/strings.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OrderPage()));
              },
              child: const Icon(Icons.arrow_back_ios_outlined)),
          centerTitle: true,
          title: Text(
            shoppingCartAppTxt,
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Center(
                  child: Text(
                emptyBasketTxt,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
              Divider(
                color: primaryColor,
              ),
              Text(emptyBasketDesTxt),
              const SizedBox(
                height: 250,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                shippingAdress,
                style: const TextStyle(fontSize: 15),
              ),
              DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down, color: primaryColor),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: primaryColor),
                  onPressed: () {},
                  child: Text(approveButtonTxt))
            ],
          ),
        ],
      ),
    );
  }
}
