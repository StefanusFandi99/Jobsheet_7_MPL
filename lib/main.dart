import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Stefanus Fandi Wibowo', 'Anugerah Bagus Pratama', 'Adhitya Pramudita Ramadhan', 'Naufal Al Zarah Jahshy',
    'Taufik Rudhanto'
  ];
  var listWarna = [
    Color.fromARGB(255, 14, 145, 2), Color.fromARGB(255, 136, 219, 2), Color.fromARGB(255, 217, 255, 3), Color.fromARGB(255, 119, 232, 236),
    Color.fromARGB(255, 250, 209, 2), Color.fromARGB(255, 248, 116, 0),

  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      height: 200,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 233, 240, 243),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(20, 20),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Apa kabar',
              textDirection: TextDirection.ltr,
            ),
            Text(
              listNama[index % listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: listWarna[index % listWarna.length],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => state;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TeksUtama teksUtama = TeksUtama();

    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jobsheet 7 Mobile Progamming Lanjut'),
          backgroundColor: const Color.fromARGB(255, 53, 142, 184),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              teksUtama,
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          onPressed: teksUtama.state.incrementIndex,
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
