import 'package:flutter/material.dart';
import 'package:onboarding/ui/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Scaffold(
        body: Onboarding(),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blank"),
      ),
      body: const Center(
        child: Text(
          'Nothing here for now',
          style: TextStyle(
            fontSize: 20.00,
          ),
        ),
      ),
    );
  }
}
