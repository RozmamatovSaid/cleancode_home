import 'package:flutter/material.dart';

class ComputationScreen extends StatelessWidget {
  const ComputationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rusult = heavyComputation();
    print("$rusult");
    return Scaffold(
      appBar: AppBar(title: Text('Heavy Computation')),

      body: Text('Result: $rusult'),
    );
  }

  int heavyComputation() {
    int n = 100000000;
    return (n * (n - 1)) ~/ 2;
  }
}
