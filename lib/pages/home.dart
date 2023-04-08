import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: widthscreen > 600
            ? const Text('web screen')
            : const Text('mobile screen'),
      ),
    );
  }
}
