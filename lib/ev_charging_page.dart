import 'package:flutter/material.dart';

class EvChargingPage extends StatefulWidget {
  EvChargingPage({Key? key}) : super(key: key);

  @override
  _EvChargingPageState createState() => _EvChargingPageState();
}

class _EvChargingPageState extends State<EvChargingPage> {
  final currentSOC = TextEditingController();
  final targetSOC = TextEditingController();
  final chargeRate = TextEditingController();
  final voltage = TextEditingController();
  final batCapacity = TextEditingController();
  final efficiency = TextEditingController();

  double? chargingTimeResult; // ตัวแปรสถานะสำหรับเก็บเวลาชาร์จ
  double? chargingPower; // ตัวแปรสถานะสำหรับกำลังไฟฟ้าชาร์จ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "EV Charging App",
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(27.0),
          child: Column(
            children: [
              // Header Section
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

              // Input Fields
              buildInputRow('Current SOC (%)', currentSOC),
              const SizedBox(height: 20),
              buildInputRow('Target SOC (%)', targetSOC),
              const SizedBox(height: 20),
              buildInputRow('Charging Rate (A)', chargeRate),
              const SizedBox(height: 20),
              buildInputRow('Voltage (V)', voltage),
              const SizedBox(height: 20),
              buildInputRow('Battery Capacity (kWh)', batCapacity),
              const SizedBox(height: 20),
              buildInputRow('Efficiency (%)', efficiency),
              const SizedBox(height: 30),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  calculateChargingTime();
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),

              // Display Results

              if (chargingPower != null)
                Card(
                  color: Colors.brown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    child: Text(
                      "Charging Power: ${chargingPower!.toStringAsFixed(2)} kW",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),

              if (chargingTimeResult != null)
                Card(
                  color: Colors.brown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    child: Text(
                      "Charging Time: ${chargingTimeResult!.toStringAsFixed(2)} hours",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  //build input function
  Widget buildInputRow(String labelText, TextEditingController controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            labelText,
            style:
                const TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: 100,
          height: 50,
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }

  // คำนวณ Charging Details
  void calculateChargingTime() {
    String C_SOC = currentSOC.text;
    String T_SOC = targetSOC.text;
    String CR = chargeRate.text;
    String Volt = voltage.text;
    String BatCap = batCapacity.text;
    String Eff = efficiency.text;

    // แปลง String เป็น double
    double? dC_SOC = double.tryParse(C_SOC);
    double? dT_SOC = double.tryParse(T_SOC);
    double? dCR = double.tryParse(CR);
    double? dVolt = double.tryParse(Volt);
    double? dBatCap = double.tryParse(BatCap);
    double? dEff = double.tryParse(Eff);

    if (dC_SOC == null ||
        dT_SOC == null ||
        dCR == null ||
        dVolt == null ||
        dBatCap == null ||
        dEff == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('this can not be empty')),
      );
      return;
    }

    double ChargingPow = dVolt * dCR;

    double ChargingTime =
        dBatCap * (dT_SOC - dC_SOC) / 100 / (ChargingPow * (dEff / 100));

    setState(() {
      chargingPower = ChargingPow;
      chargingTimeResult = ChargingTime;
    });
  }
}
