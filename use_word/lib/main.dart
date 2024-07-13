import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart' as pdf;
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Document Creator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'PDF Document Creator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _status = 'Press the button to create a PDF document';

  @override
  void initState() {
    super.initState();
  }

  Future<void> createPdfDocument() async {
    setState(() {
      _status = 'Creating PDF document...';
    });

    try {
      List<String> imageUrls = [
        'https://c.wallhere.com/photos/de/dd/Nissan_Silvia_S15_nissan_silvia_Nissan_JDM_race_cars_race_tracks_car_vehicle-157245.jpg!d',
        'https://img.gg.deals/67/9d/7fbdf83c2579db984632638718796c8814f3_1920xt1080_S1000.jpg',
        'https://img.gg.deals/67/9d/7fbdf83c2579db984632638718796c8814f3_1920xt1080_S1000.jpg',
        // Add other image URLs here
      ];

      List<pw.MemoryImage> images = [];

      for (String url in imageUrls) {
        final imageResponse = await http.get(Uri.parse(url));
        if (imageResponse.statusCode == 200) {
          final imageBytes = imageResponse.bodyBytes;
          final pdfImage = pw.MemoryImage(imageBytes);
          images.add(pdfImage);
        } else {
          throw Exception('Failed to load image: ${imageResponse.statusCode}');
        }
      }

      final pdfDocument = pw.Document();

      for (int i = 0; i < images.length; i += 2) {
        pdfDocument.addPage(
          pw.Page(
            pageFormat: pdf.PdfPageFormat.a4,
            build: (pw.Context context) {
              return pw.Stack(
                children: [
                  pw.Column(
                    children: [
                      pw.Header(
                        text: "Deniyorum",
                        title: "Merhaba",
                        decoration: const pw.BoxDecoration(
                            color: pdf.PdfColors.amber300),
                      ),
                      pw.Container(
                        height: pdf.PdfPageFormat.a4.height / 2 - 20,
                        child: pw.Image(images[i], fit: pw.BoxFit.contain),
                      ),
                      if (i + 1 < images.length)
                        pw.Container(
                          height: pdf.PdfPageFormat.a4.height / 2 - 20,
                          child:
                              pw.Image(images[i + 1], fit: pw.BoxFit.contain),
                        ),
                    ],
                  ),
                  pw.Positioned(
                    left: 0,
                    bottom: 0,
                    child: pw.Footer(title: pw.Text("Hello Footer")),
                  ),
                ],
              );
            },
          ),
        );
      }

      final directory = await getExternalStorageDirectory();
      final file = File('${directory!.path}/output.pdf');
      await file.writeAsBytes(await pdfDocument.save());

      await Share.shareFiles([file.path], text: 'PDF belgesi paylaşıldı.');

      setState(() {
        _status = 'PDF document created: ${file.path}';
      });
    } catch (e) {
      print('Error: $e');
      setState(() {
        _status = 'Error occurred: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _status,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createPdfDocument,
        tooltip: 'Create PDF Document',
        child: const Icon(Icons.create),
      ),
    );
  }
}
