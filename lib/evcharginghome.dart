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
            appBarTheme: const AppBarTheme(color: Colors.brown),
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(26, 255, 255, 255))),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  debugPrint('munu icon pressed');
                },
                icon: Icon(Icons.menu)),
          ),
          body: Padding(
            padding: const EdgeInsets.all(27.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/volvopic2.png',
                      width: 180,
                    ),
                    Text(
                      'Volvo EX30',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                // Image.network('https://t3.ftcdn.net/jpg/01/30/42/16/360_F_130421656_ci3kCSQXhfojQb3qC05XRdMENSAdUZ5x.jpg'),

                SizedBox(height: 20),

                //Current SOC(%)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                    ),
                    Expanded(
                      child: Text(
                        'Current SOC (%)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: 'Current SOC',
                          // hintText: '(%)',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),

                //Target SOC(%)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                    ),
                    Expanded(
                      child: Text(
                        'Target SOC (%)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: 'Target SOC',
                          // hintText: '(%)',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),

                //Charging Rate (A)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                    ),
                    Expanded(
                      child: Text(
                        'Charging Rate (A)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: 'Charging Rate',
                          // hintText: '(A)',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),

                //Voltage (V)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                    ),
                    Expanded(
                      child: Text(
                        'Voltage (V)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: 'Voltage',
                          // hintText: '(V)',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),

                //Battery Capacity (kWh)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                    ),
                    Expanded(
                      child: Text(
                        'Battery Capacity (kWh)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // labelText: 'Battery Capacity',
                          // hintText: '(kWh)',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),

                //Efficiency (%)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                    ),
                    Expanded(
                      child: Text(
                        'Efficiency (%)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          //labelText: 'Efficiency',
                          //hintText: '(%)',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Card(
                  color: Colors.brown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    child: Text(
                      'Charging Detail',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                //Charging Power (kWh)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Charging Power (kWh)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'x',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),

                //Charging Time (hrs)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Charging Time (hrs)',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'x',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  // Method สำหรับสร้างแถวแบบข้อความธรรมดา
  Widget buildStaticRow(String labelText, String value) {
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
        Text(
          value,
          style: const TextStyle(fontSize: 15.0),
        ),
      ],
    );
  }
}
