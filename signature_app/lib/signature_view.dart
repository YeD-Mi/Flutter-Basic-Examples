import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';
import 'package:signature_app/signature_controller.dart';

class SignaturePage extends StatelessWidget {
  const SignaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    final signaturePadController = Get.put(SignaturePadController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Imza At'),
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
                child: Text('Temizle'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final signature =
                      await signaturePadController.exportSignature();
                  if (signature != null) {
                    // İmzayı kaydet veya başka bir işlem yap
                    print('İmza kaydedildi.');
                  } else {
                    print('İmza bulunamadı.');
                  }
                },
                child: Text('Kaydet'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
