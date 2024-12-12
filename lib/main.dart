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
            appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent),
            colorScheme:
                ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent)),
        home: Scaffold(
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
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
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
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('restart pressed');
            },
            child: const Icon(Icons.restart_alt_rounded),
          ),
        ));
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'my Flutter Demo'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});


//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
      
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
        
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
          
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed this button :',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 
//     );
//   }
// }



