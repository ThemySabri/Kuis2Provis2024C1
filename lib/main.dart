import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok: 24',
            ),
            const Text(
              'Mhs 1:  2202074, Ahmad Taufiq Hidayat',
            ),
            const Text(
              'Mhs 2:  2203903, Themy Sabri Syuhada',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Jawaban no 1
  Widget soalNo1() {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Text("ini jawaban no 1"));
  }

  Widget soalNo2() {
    return SoalNo2Page();
  }
}

class SoalNo2Page extends StatefulWidget {
  const SoalNo2Page({Key? key}) : super(key: key);

  @override
  _SoalNo2PageState createState() => _SoalNo2PageState();
}

class _SoalNo2PageState extends State<SoalNo2Page> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFADC4B),
        elevation: 0,
        titleSpacing: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SizedBox(
                height: 45,
                width: 250,
                child: Image.network(
                  'https://fastly.picsum.photos/id/357/600/200.jpg?hmac=qX5qCu2B_PqB5O7vcBGOIn11NuNCrPLp687CRDXd9Ok',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  height: 190,
                  width: 395,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFADC4B),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                      bottom: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 80,
            left: 40,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hai Budi Martami",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Tetap Jaga Kesehatan Ya",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 40,
            child: SizedBox(
              height: 150,
              width: 80,
              child: Image.network(
                'https://fastly.picsum.photos/id/669/200/200.jpg?hmac=lAa_bMRK0BRBCTEvl1acVqTfEDrXQc0yNwi683-13cE', // Placeholder image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 40,
            right: 40,
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE1DCE6),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFF000000),
                      width: 1,
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Cari Pemeriksaan Kesehatan',
                      hintStyle: TextStyle(fontSize: 12),
                      contentPadding: EdgeInsets.only(bottom: 1),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 230,
            left: 20,
            child: Column(
              children: [
                SizedBox(height: 10), // Add spacing between search bar and text
                Text(
                  "Layanan Prodiax",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 35,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFE7E7E7),
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.border_color,
                      size: 50,
                      color: Color(0xFFF09B37),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Cari dan Pesan",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 155,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFE7E7E7),
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.chat,
                      size: 50,
                      color: Color(0xFFF09B37),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Chat dengan CS",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 270,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFE7E7E7),
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.edit_document,
                      size: 50,
                      color: Color(0xFFF09B37),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Hasil Pemeriksaan",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 400,
            left: 20,
            child: Column(
              children: [
                Container(
                  height: 65,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFAEB),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFBCBCB6),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFAEB),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFBCBCB6),
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.add_task,
                            color: Color(0xFFF0A345),
                            size: 17,
                          ),
                        ),
                      ),
                      // Text in the center
                      const Expanded(
                        child: Center(
                          child: Text(
                            'Gunakan Kode Rujukan Dokter',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // Play arrow icon
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.play_arrow,
                          color: Color(0xFFF0A345),
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF0EBF5),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0 ? _buildIconWithBackground(Icons.book) : const Icon(Icons.book),
              label: 'Pesanan Saya', // Editable label
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 1 ? _buildIconWithBackground(Icons.my_location) : const Icon(Icons.my_location),
              label: 'Lokasi', // Editable label
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2 ? _buildIconWithBackground(Icons.phone) : const Icon(Icons.phone),
              label: 'Kontak Kami', // Editable label
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 3 ? _buildIconWithBackground(Icons.account_circle_sharp) : const Icon(Icons.account_circle_sharp),
              label: 'Akun', // Editable label
            ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

Widget _buildIconWithBackground(IconData icon) {
  return Stack(
    children: [
      Container(
        height: 27,
        width: 50,
        decoration: BoxDecoration(
          color: const Color(0xFFF5C341), // Color of the selected indicator
          borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black, // Color of the icon
          ),
        ),
      ),
    ],
  );
}