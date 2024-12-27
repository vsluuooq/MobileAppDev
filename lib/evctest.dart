import 'package:flutter/material.dart';

//ตัวอย่าง
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.brown),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(26, 255, 255, 255),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Method เพื่อสร้าง Row ของฟิลด์ input
  Widget buildInputRow(String labelText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            labelText,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: 100,
          height: 50,
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EV Charging App"),
        leading: IconButton(
          onPressed: () {
            debugPrint('menu icon pressed');
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(27.0),
          child: Column(
            children: [
              // รูปภาพและชื่อ
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/volvopic2.png',
                    width: 180,
                  ),
                  const Text(
                    'Volvo EX30',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // ใช้ method แทน Row เดิม
              buildInputRow('Current SOC (%)'),
              const SizedBox(height: 20),
              buildInputRow('Target SOC (%)'),
              const SizedBox(height: 20),
              buildInputRow('Charging Rate (A)'),
              const SizedBox(height: 20),
              buildInputRow('Voltage (V)'),
              const SizedBox(height: 20),
              buildInputRow('Battery Capacity (kWh)'),
              const SizedBox(height: 20),
              buildInputRow('Efficiency (%)'),

              const SizedBox(height: 30),

              // ปุ่ม "Charging Detail"
              Card(
                color: Colors.brown,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: const Text(
                    'Charging Detail',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
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
