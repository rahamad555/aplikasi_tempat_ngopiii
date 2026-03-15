import 'package:flutter/material.dart';
import '../model/tempat_ngopi.dart';
import '../service/tempat_ngopi_service.dart';
import 'form_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  final service = TempatNgopiService();
  List<TempatNgopi> data = [];

  Future<void> getData() async {

    data = await service.getData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("☕ Tempat Ngopi"),
        backgroundColor: Colors.brown,
      ),

      body: data.isEmpty
          ? const Center(
              child: Text("Belum ada data tempat ngopi"),
            )
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {

                final item = data[index];

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(item.nama),
                    subtitle: Text("${item.lokasi}\n${item.catatan}"),
                    isThreeLine: true,

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () async {

                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => FormPage(data: item),
                              ),
                            );

                            getData();
                          },
                        ),

                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () async {

                            await service.deleteData(item.id!);
                            getData();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        child: const Icon(Icons.add),

        onPressed: () async {

          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const FormPage(),
            ),
          );

          getData();
        },
      ),
    );
  }
}