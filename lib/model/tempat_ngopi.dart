class TempatNgopi {

  final String? id;
  final String nama;
  final String lokasi;
  final String catatan;

  TempatNgopi({
    this.id,
    required this.nama,
    required this.lokasi,
    required this.catatan,
  });

  factory TempatNgopi.fromMap(Map<String, dynamic> map) {
    return TempatNgopi(
      id: map['id']?.toString(),
      nama: map['nama'] ?? '',
      lokasi: map['lokasi'] ?? '',
      catatan: map['catatan'] ?? '',
    );
  }

}