import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController namaController = TextEditingController();
  final TextEditingController nbiController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController igController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [

                const SizedBox(height: 20),

                // Gambar
                Image.asset(
                  "assets/register.jpg",
                  height: 180,
                ),

                const SizedBox(height: 20),

                const Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  "Praktikum PAB 2026",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 40),

                buildTextField(
                  controller: namaController,
                  hint: "Masukan Nama",
                ),

                const SizedBox(height: 15),

                buildTextField(
                  controller: nbiController,
                  hint: "Masukan NBI",
                ),

                const SizedBox(height: 15),

                buildTextField(
                  controller: emailController,
                  hint: "Masukan Email",
                ),

                const SizedBox(height: 15),

                buildTextField(
                  controller: alamatController,
                  hint: "Masukan Alamat",
                ),

                const SizedBox(height: 15),

                buildTextField(
                  controller: igController,
                  hint: "Masukan Akun Instagram",
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Pendaftaran Berhasil"),
                        ),
                      );
                    },
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String hint,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}