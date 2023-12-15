import 'package:flutter/material.dart';
import 'package:insta_app/widgets/contants.dart';


class Addpost extends StatefulWidget {
  const Addpost({super.key});

  @override
  State<Addpost> createState() => _AddpostState();
}

class _AddpostState extends State<Addpost> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.upload,
          size: 55,)
          ),
      ),
    );
  }
}
