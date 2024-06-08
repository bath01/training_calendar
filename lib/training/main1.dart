import 'package:apprendre_app_1/training/main3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bath Application',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Center(child: AddEventPage()),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 34.0,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Calendrier'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Ajout'),
          ]),
    ));
  }
}



// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'KU bussness 2024',
//               style: TextStyle(fontSize: 34.0),
//             ),
//             const Text(
//               "Salon de Bath pour l'ia pour les dur lalalalalalal lalalalalalal alalalla",
//               textAlign: TextAlign.center,
//             ),
//             const Padding(padding: EdgeInsets.only(top: 20)),
//             Builder(builder: (context) {
//               return ElevatedButton.icon(
//                   style: const ButtonStyle(
//                       padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
//                       backgroundColor: WidgetStatePropertyAll(Colors.amber)),
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const MyWidgetBath()));
//                   },
//                   label: const Text(
//                     "Afficher le planning",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   icon: const Icon(Icons.calendar_month));
//             }),
//           ],
//         ),