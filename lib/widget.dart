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
        theme: ThemeData(
            useMaterial3: true,
            appBarTheme:
                const AppBarTheme(color: Color.fromARGB(255, 91, 11, 105)),
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(26, 255, 255, 255))),
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   'PEA',
                //   style: TextStyle(color: Colors.white),
                // ),
                Image.asset(
                  'assets/images/i3.webp',
                  width: 70,
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(27.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pea.png',
                  width: 150,
                ),
                SizedBox(height: 30),

                const Text(
                  'ขอบคุณที่ใช้บริการ',
                  style: TextStyle(fontSize: 22.2, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
                  style:
                      TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal),
                ),

                // Image.network('https://t3.ftcdn.net/jpg/01/30/42/16/360_F_130421656_ci3kCSQXhfojQb3qC05XRdMENSAdUZ5x.jpg'),

                SizedBox(height: 70),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'สรุปรายละเอียดการชาร์จ',
                      style: TextStyle(
                          fontSize: 22.2, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'วันที่ชาร์จ',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '12 dec 24',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
