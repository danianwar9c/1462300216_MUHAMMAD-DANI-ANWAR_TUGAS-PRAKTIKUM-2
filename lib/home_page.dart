import 'package:flutter/material.dart';
import 'doctor_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text("Kategori Dokter"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: ListView(
          children: [
            // DOKTER UMUM
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.medical_services,
                  color: Colors.blue,
                  size: 35,
                ),
                title: const Text(
                  "Dokter Umum",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorListPage(
                        kategori: "Dokter Umum",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            // DOKTER GIGI
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.masks,
                  color: Colors.blue,
                  size: 35,
                ),
                title: const Text(
                  "Dokter Gigi",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorListPage(
                        kategori: "Dokter Gigi",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            // DOKTER ANAK
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.child_care,
                  color: Colors.blue,
                  size: 35,
                ),
                title: const Text(
                  "Dokter Anak",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorListPage(
                        kategori: "Dokter Anak",
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),

            // DOKTER HEWAN
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.pets,
                  color: Colors.blue,
                  size: 35,
                ),
                title: const Text(
                  "Dokter Hewan",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorListPage(
                        kategori: "Dokter Hewan",
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}