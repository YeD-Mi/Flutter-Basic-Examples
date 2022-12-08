import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("URL Launcher"))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () =>
                      launchUrl(Uri(scheme: 'mailto', path: 'bilgi@mryed.com')),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      launchUrl(Uri(scheme: 'tel', path: '+905076486119')),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.phone),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => launchUrl(
                      Uri(scheme: 'https', path: 'wa.me/905076486119')),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.whatsapp),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      // launchUrl(Uri(scheme: 'https', path: 'mryed.com')),
                      launchUrl(Uri(scheme: 'https', host: 'mryed.com')),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.link),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
