import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';
import 'package:excel/excel.dart';
import 'package:image/image.dart' as img;
import 'package:signature_app/signature_controller.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SignaturePage extends StatelessWidget {
  const SignaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signaturePadController = Get.put(SignaturePadController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Imza At'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.grey[200],
            child: Signature(
              controller: signaturePadController.signatureController,
              backgroundColor: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  signaturePadController.clearSignature();
                },
                child: const Text('Temizle'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final signature =
                      await signaturePadController.exportSignature();
                  if (signature != null) {
                    await saveSignatureToExcel(signature);
                    print('İmza kaydedildi.');
                  } else {
                    print('İmza bulunamadı.');
                  }
                },
                child: const Text('Kaydet'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final filePath =
                      '/storage/emulated/0/mryed.xlsx'; // Dosyanın yeni yolu (dahili depolama ana dizini)
                  final url =
                      'file://$filePath'; // Dosya yolunu URL'ye dönüştür

                  if (await canLaunch(url)) {
                    await launch(url); // URL'yi aç
                  } else {
                    print('Excel uygulaması bulunamadı.');
                  }
                },
                child: Text('Excel\'i Aç'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> saveSignatureToExcel(Uint8List signature) async {
    var excel = Excel.createExcel();
    var sheetObject = excel['Sayfa1'];

    // İmzayı image paketi ile decode edin
    img.Image? image = img.decodeImage(signature);
    if (image == null) {
      print('İmza resmi decode edilemedi.');
      return;
    }

    // Image'i byte array olarak alın
    var png = img.encodePng(image);

    // Byte array'i base64 stringe çevirin
    String base64Image = base64Encode(png);

    // Base64 string'i Excel'e yazın
    sheetObject.cell(CellIndex.indexByString("A5")).value =
        TextCellValue(base64Image);

    // Dosya kaydetme işlemi
    final directory =
        await getExternalStorageDirectory(); // Dahili depolama ana dizinine erişim sağlar
    String filePath =
        '${directory!.path}/mryed.xlsx'; // Dosyanın yeni yolu (dahili depolama ana dizini)
    File(filePath)
      ..createSync(recursive: true)
      ..writeAsBytesSync(excel.encode()!);

    print('Excel dosyası kaydedildi: $filePath');
  }
}
