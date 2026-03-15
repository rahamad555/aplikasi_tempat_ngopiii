import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'page/list_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://crcgiillhflubgnwwvioz.supabase.co',
    anonKey: 'sb_publishable_1tECfgV9ZZ1Uq23X8f0t6A_X9Qtoekf',
  );

  final supabase = Supabase.instance.client;

  try {
    await supabase.from('tempat_ngopi').insert({
      'nama': 'test kopi',
      'lokasi': 'test kota',
      'catatan': 'test dari main'
    });

    print("INSERT BERHASIL");
  } catch (e) {
    print("ERROR INSERT: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListPage(),
    );
  }
}