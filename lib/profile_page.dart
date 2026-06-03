import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(title: const Text("Profile"), centerTitle: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              const SizedBox(height: 20),

              // FOTO PROFILE
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/profile.jpg"),
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
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person, color: Colors.blue),
                        title: Text("Nama Lengkap"),
                        subtitle: Text("Dani Anwar"),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(Icons.phone, color: Colors.green),
                        title: Text("Nomor Telepon"),
                        subtitle: Text("081234567890"),
                      ),

                      Divider(),

                      ListTile(
                        leading: Icon(Icons.location_on, color: Colors.red),
                        title: Text("Alamat"),
                        subtitle: Text("Surabaya, Indonesia"),
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

                          content: const Text(
                            "Apakah Anda yakin ingin keluar?",
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
      ),
    );
  }
}
