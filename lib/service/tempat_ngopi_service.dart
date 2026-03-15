import 'package:supabase_flutter/supabase_flutter.dart';
import '../model/tempat_ngopi.dart';

class TempatNgopiService {

  final supabase = Supabase.instance.client;

  Future<List<TempatNgopi>> getData() async {

    final response = await supabase
        .from('tempat_ngopi')
        .select();

    return (response as List)
        .map((e) => TempatNgopi.fromMap(e))
        .toList();
  }

  Future<void> tambahData(TempatNgopi data) async {

    await supabase.from('tempat_ngopi').insert({
      'nama': data.nama,
      'lokasi': data.lokasi,
      'catatan': data.catatan,
    });

  }

  Future<void> updateData(TempatNgopi data) async {

    await supabase
        .from('tempat_ngopi')
        .update({
          'nama': data.nama,
          'lokasi': data.lokasi,
          'catatan': data.catatan,
        })
        .eq('id', data.id!);

  }

  Future<void> deleteData(String id) async {

    await supabase
        .from('tempat_ngopi')
        .delete()
        .eq('id', id);

  }

}