import 'package:flutter/material.dart';
import '../model/tempat_ngopi.dart';
import '../service/tempat_ngopi_service.dart';

class FormPage extends StatefulWidget {

  final TempatNgopi? data;

  const FormPage({super.key, this.data});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final service = TempatNgopiService();

  final namaController = TextEditingController();
  final lokasiController = TextEditingController();
  final catatanController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.data != null) {
      namaController.text = widget.data!.nama;
      lokasiController.text = widget.data!.lokasi;
      catatanController.text = widget.data!.catatan;
    }
  }

  Future<void> simpan() async {

    final data = TempatNgopi(
      id: widget.data?.id,
      nama: namaController.text,
      lokasi: lokasiController.text,
      catatan: catatanController.text,
    );

    if (widget.data == null) {

      await service.tambahData(data);

    } else {

      await service.updateData(data);
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Form Tempat Ngopi"),
        backgroundColor: Colors.brown,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                labelText: "Nama Tempat",
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: lokasiController,
              decoration: const InputDecoration(
                labelText: "Lokasi",
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: catatanController,
              decoration: const InputDecoration(
                labelText: "Catatan",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: simpan,
              child: const Text("Simpan"),
            )
          ],
        ),
      ),
    );
  }
}