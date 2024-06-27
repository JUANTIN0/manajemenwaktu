import 'package:clock_loader/clock_loader.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClockLoaderPage(),
    );
  }
}

class ClockLoaderPage extends StatefulWidget {
  @override
  State<ClockLoaderPage> createState() => _ClockLoaderPageState();
}

class _ClockLoaderPageState extends State<ClockLoaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 245, 242, 242),
        child: Center(
          child: ClockLoader(
            clockLoaderModel: ClockLoaderModel(
              shapeOfParticles: ShapeOfParticlesEnum.circle,
              mainHandleColor: const Color.fromARGB(255, 5, 5, 5),
              particlesColor: const Color(0xFF524E4E), // Warna yang diperbaiki
            ),
          ),
        ),
      ),
    );
  }
}
