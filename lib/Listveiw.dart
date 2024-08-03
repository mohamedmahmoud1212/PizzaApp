import 'package:flutter/material.dart';

class ExploreMenu extends StatelessWidget {
  ExploreMenu({super.key, required this.imgg});
  String? imgg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: 250,
            width: 220,
            child: Container(
              child: Column(
                children: [Image.asset(imgg!), const Text("bolbol")],
              ),
            )));
  }
}
