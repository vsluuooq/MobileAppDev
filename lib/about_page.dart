import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar title'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('munu icon pressed');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              debugPrint('bag button pressed');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Text(
            'Hello, boonnisa',
            style: TextStyle(fontSize: 22.2, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Hello, Column',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
          ),

          // Image.network('https://t3.ftcdn.net/jpg/01/30/42/16/360_F_130421656_ci3kCSQXhfojQb3qC05XRdMENSAdUZ5x.jpg'),

          Image.asset(
            'assets/images/snm2.jpg',
            width: 300,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  debugPrint('clicked submit button');
                },
                child: const Text(
                  'OK, Submit',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                iconSize: 50,
              ),
            ],
          ),

          const Text(
            'Hello, row',
            style: TextStyle(fontSize: 22.2, fontWeight: FontWeight.normal),
          ),

          Card(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Text('1234'),
            ),
          ),

          Container(
            width: 300,
            height: 70,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'name',
                hintText: 'enter name',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('restart pressed');
        },
        child: const Icon(Icons.restart_alt_rounded),
      ),
    );
  }
}
