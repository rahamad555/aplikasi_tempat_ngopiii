import 'package:flutter/material.dart';
import '../model/tempat_ngopi.dart';

class FormPage extends StatefulWidget {
  final TempatNgopi? data;

  const FormPage({super.key, this.data});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late TextEditingController namaController;
  late TextEditingController lokasiController;
  late TextEditingController catatanController;

  @override
  void initState() {
    super.initState();
    namaController =
        TextEditingController(text: widget.data?.nama ?? '');
    lokasiController =
        TextEditingController(text: widget.data?.lokasi ?? '');
    catatanController =
        TextEditingController(text: widget.data?.catatan ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data == null
            ? "Tambah Tempat Ngopi"
            : "Edit Tempat Ngopi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                labelText: "Nama Tempat",
                prefixIcon: Icon(Icons.store),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: lokasiController,
              decoration: const InputDecoration(
                labelText: "Lokasi",
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: catatanController,
              decoration: const InputDecoration(
                labelText: "Catatan",
                prefixIcon: Icon(Icons.note),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final data = TempatNgopi(
                    nama: namaController.text,
                    lokasi: lokasiController.text,
                    catatan: catatanController.text,
                  );
                  Navigator.pop(context, data);
                },
                child: const Text("Simpan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}