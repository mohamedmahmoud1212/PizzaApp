import 'package:flutter/material.dart';

class sec extends StatefulWidget {
  const sec({super.key});

  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("hhhhh"))
        ],
      ),
    );
  }
}
