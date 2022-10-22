import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MissingWidget extends StatelessWidget {
  const MissingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Missing Widget'),),
      body: const Center(child: Text('Missing Widget')),
    );
  }
}