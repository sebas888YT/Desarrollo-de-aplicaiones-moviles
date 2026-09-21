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
  int counter = 0;

  void incrementar() {
    setState(() {
      counter++;
    });
  }

  void disminuir() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void reiniciar() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('UnitecnarApp')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                ),
              ),

              Text(
                counter == 1 ? 'Click' : 'Clicks',
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: incrementar,
              child: const Icon(Icons.plus_one),
            ),

            const SizedBox(height: 20),

            FloatingActionButton(
              onPressed: disminuir,
              child: const Icon(Icons.exposure_minus_1),
            ),

            const SizedBox(height: 20),

            FloatingActionButton(
              onPressed: reiniciar,
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
