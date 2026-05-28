import 'package:flutter/material.dart';

class DoctorDetailPage extends StatelessWidget {

  final Map<String, dynamic> dokter;

  const DoctorDetailPage({
    super.key,
    required this.dokter,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text("Detail Dokter"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // FOTO DOKTER
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    dokter["gambar"],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // NAMA DOKTER
              Center(
                child: Text(
                  dokter["nama"],
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // SPESIALIS
              Center(
                child: Text(
                  dokter["spesialis"],
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // CARD INFORMASI
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(18),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // JADWAL
                      const Row(
                        children: [

                          Icon(
                            Icons.access_time,
                            color: Colors.blue,
                          ),

                          SizedBox(width: 10),

                          Text(
                            "Jadwal Praktik",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Senin - Jumat\n08.00 - 16.00",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 25),

                      // PENGALAMAN
                      Row(
                        children: [

                          const Icon(
                            Icons.work,
                            color: Colors.blue,
                          ),

                          const SizedBox(width: 10),

                          Text(
                            dokter["pengalaman"],
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      // RATING
                      Row(
                        children: [

                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),

                          const SizedBox(width: 10),

                          Text(
                            dokter["rating"].toString(),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      // BIOGRAFI
                      const Text(
                        "Biografi Singkat",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Dokter berpengalaman dan profesional dalam menangani pasien dengan pelayanan kesehatan terbaik serta komunikasi yang baik terhadap pasien.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 35),

              // BUTTON JANJI TEMU
              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  onPressed: () {

                    showDialog(
                      context: context,

                      builder: (context) {

                        return AlertDialog(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),

                          title: const Text(
                            "Konfirmasi Janji Temu",
                          ),

                          content: Text(
                            "Apakah Anda ingin membuat janji temu dengan ${dokter["nama"]} ?",
                          ),

                          actions: [

                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Batal"),
                            ),

                            ElevatedButton(
                              onPressed: () {

                                Navigator.pop(context);

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "Janji temu dengan ${dokter["nama"]} berhasil dibuat",
                                    ),
                                  ),
                                );
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },

                  child: const Text(
                    "Buat Janji Temu",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}