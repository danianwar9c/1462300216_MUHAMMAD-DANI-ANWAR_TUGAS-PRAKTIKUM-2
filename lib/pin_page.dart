import 'package:flutter/material.dart';
import 'home_screen.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter your PIN",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Please enter your pin that you have created",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 40),

              const Icon(
                Icons.lock_outline,
                color: Colors.red,
                size: 70,
              ),

              const SizedBox(height: 30),

              TextField(
                controller: pinController,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,

                decoration: InputDecoration( hintText: "Masukkan PIN", border: OutlineInputBorder( borderRadius: BorderRadius.circular(15), ), ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(100, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                onPressed: () {
                  if (pinController.text == "1234") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("PIN Salah"),
                      ),
                    );
                  }
                },

                child: const Icon(
                  Icons.lock_open,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}