import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Foto Profil
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/profile.jpg"), // taruh gambar di folder assets
            ),
            const SizedBox(height: 10),

            // Nama
            const Text(
              "Muhamamd Nur Ramadhan",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // Deskripsi
            const Text(
              "Out Of The Box is Keyless",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // Informasi tambahan
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text("mnrdhan04@gmail.com"),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("+62 8privasi"),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text("Sangatta, Kutai Timur, Indonesia"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
