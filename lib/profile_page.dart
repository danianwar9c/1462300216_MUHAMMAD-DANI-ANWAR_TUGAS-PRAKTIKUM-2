import 'package:flutter/material.dart';
import 'home_page.dart';
import 'appointment_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(title: const Text("Profile"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const SizedBox(height: 20),

            // FOTO PROFILE
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
              ),
            ),

            const SizedBox(height: 20),

            // NAMA
            const Text(
              "Dani Anwar",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // EMAIL
            Text(
              "dani@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            const SizedBox(height: 30),

            // CARD INFORMASI
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(15),

                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person, color: Colors.blue),

                      title: const Text("Nama Lengkap"),

                      subtitle: const Text("Dani Anwar"),
                    ),

                    const Divider(),

                    ListTile(
                      leading: const Icon(Icons.phone, color: Colors.green),

                      title: const Text("Nomor Telepon"),

                      subtitle: const Text("081234567890"),
                    ),

                    const Divider(),

                    ListTile(
                      leading: const Icon(Icons.location_on, color: Colors.red),

                      title: const Text("Alamat"),

                      subtitle: const Text("Surabaya, Indonesia"),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // BUTTON LOGOUT
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                onPressed: () {
                  showDialog(
                    context: context,

                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Logout"),

                        content: const Text("Apakah Anda yakin ingin keluar?"),

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
                                const SnackBar(
                                  content: Text("Berhasil Logout"),
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

                icon: const Icon(Icons.logout, color: Colors.white),

                label: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,

        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const AppointmentPage()),
            );
          }
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Janji",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
