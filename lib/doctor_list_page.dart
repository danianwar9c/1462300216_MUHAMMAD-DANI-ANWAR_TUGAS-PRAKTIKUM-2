import 'package:flutter/material.dart';
import 'doctor_detail_page.dart';

class DoctorListPage extends StatelessWidget {

  final String kategori;

  const DoctorListPage({
    super.key,
    required this.kategori,
  });

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> dokterList = [

      {
        "nama": "dr. Ahmad Hidayat",
        "spesialis": kategori,
        "pengalaman": "10 Tahun",
        "rating": 4.5,
        "gambar":
            "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d",
      },

      {
        "nama": "dr. Budi Santoso",
        "spesialis": kategori,
        "pengalaman": "8 Tahun",
        "rating": 4.7,
        "gambar":
            "https://images.unsplash.com/photo-1559839734-2b71ea197ec2",
      },

      {
        "nama": "dr. Clara Wijaya",
        "spesialis": kategori,
        "pengalaman": "12 Tahun",
        "rating": 4.8,
        "gambar":
            "https://images.unsplash.com/photo-1594824476967-48c8b964273f",
      },

      {
        "nama": "dr. Dimas Pratama",
        "spesialis": kategori,
        "pengalaman": "7 Tahun",
        "rating": 4.3,
        "gambar":
            "https://images.unsplash.com/photo-1537368910025-700350fe46c7",
      },

      {
        "nama": "dr. Eka Putri",
        "spesialis": kategori,
        "pengalaman": "9 Tahun",
        "rating": 4.6,
        "gambar":
            "https://images.unsplash.com/photo-1651008376811-b90baee60c1f",
      },

      {
        "nama": "dr. Farhan Rizky",
        "spesialis": kategori,
        "pengalaman": "11 Tahun",
        "rating": 4.9,
        "gambar":
            "https://images.unsplash.com/photo-1622253692010-333f2da6031d",
      },

      {
        "nama": "dr. Gina Maharani",
        "spesialis": kategori,
        "pengalaman": "6 Tahun",
        "rating": 4.2,
        "gambar":
            "https://images.unsplash.com/photo-1591604021836-c1c7c1c5c1e1",
      },

      {
        "nama": "dr. Hendra Saputra",
        "spesialis": kategori,
        "pengalaman": "14 Tahun",
        "rating": 4.8,
        "gambar":
            "https://images.unsplash.com/photo-1582750433449-648ed127bb54",
      },

      {
        "nama": "dr. Intan Permata",
        "spesialis": kategori,
        "pengalaman": "5 Tahun",
        "rating": 4.1,
        "gambar":
            "https://images.unsplash.com/photo-1551887373-6ed7c85c9e8a",
      },

      {
        "nama": "dr. Joko Wijaya",
        "spesialis": kategori,
        "pengalaman": "13 Tahun",
        "rating": 4.7,
        "gambar":
            "https://images.unsplash.com/photo-1622902046580-2b47f47f5471",
      },
    ];

    return Scaffold(

      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: Text(kategori),
      ),

      body: ListView.builder(

        itemCount: dokterList.length,

        itemBuilder: (context, index) {

          final dokter = dokterList[index];

          return Card(

            margin: const EdgeInsets.all(12),

            elevation: 5,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: ListTile(

              contentPadding: const EdgeInsets.all(10),

              leading: CircleAvatar(
                radius: 30,

                backgroundImage: NetworkImage(
                  dokter["gambar"],
                ),
              ),

              title: Text(
                dokter["nama"],

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),

              subtitle: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  const SizedBox(height: 5),

                  Text(
                    dokter["spesialis"],
                  ),

                  const SizedBox(height: 5),

                  Text(
                    "${dokter["pengalaman"]} pengalaman",
                  ),

                  const SizedBox(height: 5),

                  Row(
                    children: [

                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 18,
                      ),

                      const SizedBox(width: 5),

                      Text(
                        dokter["rating"].toString(),
                      ),
                    ],
                  ),
                ],
              ),

              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),

              onTap: () {

                Navigator.push(
                  context,

                  MaterialPageRoute(
                    builder: (context) => DoctorDetailPage(
                      dokter: dokter,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}