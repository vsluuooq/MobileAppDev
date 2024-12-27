import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = '';
  final _textCoontroller = TextEditingController();
  // final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            const Text(
              'Hello, boonnisa',
              style: TextStyle(fontSize: 22.2, fontWeight: FontWeight.bold),
            ),
            Text('$_output'),
            Container(
              width: 220,
              height: 70,
              child: TextField(
                controller: _textCoontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'name',
                  hintText: 'enter name',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String input = _textCoontroller.text;
                debugPrint('button clicked');
                setState(() {
                  _output = 'Hello, $input, good job';
                });
              },
              child: const Text(
                'Click here',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('restart pressed');
          setState(() {
            _output = '';
          });
        },
        child: const Icon(Icons.restart_alt_rounded),
      ),
    );
  }
}
