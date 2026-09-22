import 'package:flutter/material.dart';
import 'detail_page.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMK PGRI 1 Giri', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
        body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/foto_sekolah.png', 
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            const Text('Selamat Datang!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Jelajahi area SMK PGRI 1 Giri Banyuwangi.', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.account_balance, color: Colors.blue),
                title: const Text('Gedung Utama', style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DetailPage()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.computer, color: Colors.blue),
                title: const Text('Laboratorium Komputer', style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.business, color: Colors.blue),
                title: const Text('Laboratorium Perhotelan', style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}